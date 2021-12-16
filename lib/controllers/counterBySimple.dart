import 'package:get/get.dart';

class CounterBySimpleController extends GetxController {
  int counter = 0;

  int get calcCounter => counter * 10;

  void increment() {
    counter++;
    update();
  }

  void decrement() {
    counter--;
    update();
  }
}
