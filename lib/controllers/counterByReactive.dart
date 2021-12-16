import 'package:get/get.dart';

class CounterByReactiveController extends GetxController {
  RxInt counter = 0.obs;
  RxList<int> counters = RxList<int>([]);

  void increment() {
    counter++;
  }

  void addCount(int num) {
    counters.add(num);
  }

  @override
  onInit() {
    ever(counters, (_) => print("[ever] $_"));

    once(counters, (_) => print("[once] $_"));

    debounce(counters, (_) => print("[debounce] $_"),
        time: const Duration(seconds: 1));

    interval(counters, (_) => print("[interval] $_"),
        time: const Duration(seconds: 1));
  }
}
