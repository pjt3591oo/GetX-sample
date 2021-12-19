import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample/apis/user.dart';

class ServerCommunication extends StatefulWidget {
  const ServerCommunication({Key? key}) : super(key: key);

  @override
  State<ServerCommunication> createState() => _ServerCommunicationState();
}

class _ServerCommunicationState extends State<ServerCommunication> {
  get child => null;

  @override
  Widget build(BuildContext context) {
    UserRepository userRepository = Get.put(UserRepository());
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
                    Response<List<User>> users =
                        await userRepository.getUsers();
                    print(users.body);
                  },
                  child: const Text('get users')),
              ElevatedButton(
                  onPressed: () async {
                    Response<User> users = await userRepository.getUser(0);
                    print(users.body);
                  },
                  child: const Text('get user'))
            ]),
      ),
    );
  }
}
