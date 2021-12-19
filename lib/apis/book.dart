import 'package:get/get.dart';

class Book {
  Book({required this.title, required this.author});

  String title;
  String author;

  factory Book.fromJson(Map<String, dynamic> json) => Book(
        title: json["title"],
        author: json["author"],
      );

  static List<Book> listFromJson(list) =>
      List<Book>.from(list.map((x) => Book.fromJson(x)));
}

// 신경쓸 것 여기는 javascript가 아니다
// json을 js처럼 막무가내로 사용할 수 없다.
// 전달받은 json을 우리가 원하는 데이터 클래스 타입으로 변환하는 과정이 필요...
// GetConnect는 응답받은 데이터를 Map<String, dynamic> 타입으로 처리한다.
class BookRepository extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = 'http://localhost:3000/book';

    httpClient.addRequestModifier<dynamic>((request) {
      request.headers['apikey'] = '12345678';
      return request;
    });
  }

  Future<Response<List<Book>>> getBooks() =>
      get<List<Book>>('/', decoder: (obj) => Book.listFromJson(obj));

  Future<Response<Book>> getBook(int id) =>
      get<Book>('/$id', decoder: (obj) => Book.fromJson(obj));
}

mixin Mapping {}
