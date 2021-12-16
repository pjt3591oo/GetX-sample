import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample/controllers/counterBySimple.dart';

class CounterBySimple extends StatefulWidget {
  const CounterBySimple({Key? key}) : super(key: key);

  @override
  State<CounterBySimple> createState() => _CounterBySimpleState();
}

class _CounterBySimpleState extends State<CounterBySimple> {
  final CounterBySimpleController _counterController =
      Get.put(CounterBySimpleController());

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
            GetBuilder<CounterBySimpleController>(
              builder: (counterController) => Text(
                'count = ${counterController.counter}',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            GetBuilder<CounterBySimpleController>(
              builder: (counterController) => Text(
                'count = ${counterController.calcCounter}',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            TextButton(
              onPressed: _counterController.increment,
              child: const Text("+"),
            ),
            TextButton(
              onPressed: _counterController.decrement,
              child: const Text("-"),
            )
          ],
        ),
      ),
    );
  }
}
