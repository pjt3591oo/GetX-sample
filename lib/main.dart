import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample/pages/home.dart';
import 'package:getx_sample/pages/counterBySimple.dart';

void main() {
  runApp(GetMaterialApp(
    home: const Home(),
    getPages: [
      GetPage(name: '/', page: () => const Home()),
      GetPage(name: '/counter/simple', page: () => const CounterBySimple()),
      GetPage(name: '/counter/reactive', page: () => const CounterBySimple()),
    ],
  ));
}
