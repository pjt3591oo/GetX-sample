import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample/apis/book.dart';

class HttpCommunicationPage extends StatefulWidget {
  const HttpCommunicationPage({Key? key}) : super(key: key);

  @override
  State<HttpCommunicationPage> createState() => _HttpCommunicationPageState();
}

class _HttpCommunicationPageState extends State<HttpCommunicationPage> {
  get child => null;

  @override
  Widget build(BuildContext context) {
    BookRepository bookRepository = Get.put(BookRepository());
    return Scaffold(
      appBar: AppBar(
        title: const Text('server communication'),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              ElevatedButton(
                  onPressed: () async {
                    Response<List<Book>> books =
                        await bookRepository.getBooks();
                    print(books.body);
                  },
                  child: const Text('get Books')),
              ElevatedButton(
                  onPressed: () async {
                    Response<Book> Books = await bookRepository.getBook(0);
                    print(Books.body);
                  },
                  child: const Text('get Book'))
            ]),
      ),
    );
  }
}
