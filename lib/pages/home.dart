import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample/pages/counterByReactive.dart';
import 'package:getx_sample/pages/counterBySimple.dart';
import 'package:getx_sample/pages/server.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('GetX First App : State Management'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                  child: const Text('simple state manage'),
                  onPressed: () {
                    Get.to(const CounterBySimple());
                  }),
              ElevatedButton(
                  child: const Text('reactive state manage'),
                  onPressed: () {
                    Get.to(const CounterByReactive());
                  }),
              ElevatedButton(
                  child: const Text('Server communication'),
                  onPressed: () {
                    Get.to(const ServerCommunication());
                  }),
            ],
          ),
        ));
  }
}
