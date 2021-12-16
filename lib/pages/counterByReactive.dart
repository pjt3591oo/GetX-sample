import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample/controllers/counterByReactive.dart';

class CounterByReactive extends StatefulWidget {
  const CounterByReactive({Key? key}) : super(key: key);

  @override
  State<CounterByReactive> createState() => _CounterByReactiveState();
}

class _CounterByReactiveState extends State<CounterByReactive> {
  final CounterByReactiveController _counterController =
      Get.put(CounterByReactiveController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Obx(() => Text(
                  'count = ${_counterController.counter.value}',
                  style: Theme.of(context).textTheme.headline4,
                )),
            Obx(() => Text(
                  'count = ${_counterController.counters}',
                  style: Theme.of(context).textTheme.headline4,
                )),
            TextButton(
              onPressed: () {
                _counterController.increment();
                _counterController.addCount(1);
              },
              child: const Text("+"),
            ),
            TextButton(
              onPressed: () {
                _counterController.counter--;
              },
              child: const Text("-"),
            )
          ],
        ),
      ),
    );
  }
}
