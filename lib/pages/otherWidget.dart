import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample/apis/book.dart';

class OtherWidgetPage extends StatefulWidget {
  const OtherWidgetPage({Key? key}) : super(key: key);

  @override
  State<OtherWidgetPage> createState() => _OtherWidgetPageState();
}

class _OtherWidgetPageState extends State<OtherWidgetPage> {
  get child => null;

  @override
  Widget build(BuildContext context) {
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
                    Get.snackbar('title', 'body',
                        snackPosition: SnackPosition.BOTTOM, onTap: (context) {
                      print('onTap');
                    });
                  },
                  child: const Text('SnackBar')),
              ElevatedButton(
                  onPressed: () async {
                    // Get.dialog(
                    //   Dialog(
                    //     child: Container(
                    //       height: 100,
                    //       child: const Center(
                    //         child: Text('Hello World'),
                    //       ),
                    //     ),
                    //   ),
                    // );
                    Get.defaultDialog(title: 'title', middleText: 'middleText');
                  },
                  child: const Text('Dialog')),
              ElevatedButton(
                  onPressed: () async {
                    Get.bottomSheet(Container(
                      color: Colors.white,
                      child: Column(
                        children: const [
                          Expanded(child: Text('row 1')),
                          Expanded(child: Text('row 2')),
                          Expanded(child: Text('row 3')),
                          Expanded(child: Text('row 4')),
                          Expanded(child: Text('row 5')),
                          Expanded(child: Text('row 6')),
                        ],
                      ),
                    ));
                  },
                  child: const Text('BottomSheet'))
            ]),
      ),
    );
  }
}
