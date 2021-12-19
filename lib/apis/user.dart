import 'package:get/get.dart';

class User {
  User({required this.age, required this.name});

  String name;
  int age;

  factory User.fromJson(Map<String, dynamic> json) => User(
        age: json["age"],
        name: json["name"],
      );

  static List<User> listFromJson(list) =>
      List<User>.from(list.map((x) => User.fromJson(x)));
}

// 신경쓸 것 여기는 javascript가 아니다
// json을 js처럼 막무가내로 사용할 수 없다.
// 전달받은 json을 우리가 원하는 데이터 클래스 타입으로 변환하는 과정이 필요...
// GetConnect는 응답받은 데이터를 Map<String, dynamic> 타입으로 처리한다.
class UserRepository extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = 'http://localhost:3000';
  }

  Future<Response<List<User>>> getUsers() =>
      get<List<User>>('/', decoder: (obj) => User.listFromJson(obj));

  Future<Response<User>> getUser(int id) =>
      get<User>('/$id', decoder: (obj) => User.fromJson(obj));
}
