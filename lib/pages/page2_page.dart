import 'package:flutter/material.dart';
import 'package:flutter_states/services/usuario_service.dart';
import 'package:provider/provider.dart';

import '../models/user.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userService = Provider.of<UserService>(context);
    return Scaffold(
      appBar: AppBar(
        title: (userService.user == null)
            ? Text('Page 2')
            : Text(userService.user!.name!),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          MaterialButton(
              color: Colors.blue,
              onPressed: (() {
                User newUser = User(name: 'Ale', age: 23, professions: [
                  'Flutter dev',
                  'Xamarin dev',
                  'Fullstack dev'
                ]);
                userService.user = newUser;
              }),
              child: const Text(
                'Set user',
                style: TextStyle(color: Colors.white),
              )),
          MaterialButton(
              color: Colors.blue,
              onPressed: (() {
                userService.changeAge(30);
              }),
              child: const Text(
                'Change age',
                style: TextStyle(color: Colors.white),
              )),
          MaterialButton(
              color: Colors.blue,
              onPressed: (() {
                userService.addProfession('Backend dev');
              }),
              child: const Text(
                'Add profession',
                style: TextStyle(color: Colors.white),
              ))
        ],
      )),
    );
  }
}
