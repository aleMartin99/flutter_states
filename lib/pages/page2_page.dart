import 'package:flutter/material.dart';
import 'package:flutter_states/services/user_service.dart';

import '../models/user.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: StreamBuilder(
          stream: userService.userStream,
          builder: (BuildContext context, AsyncSnapshot<User> snapshot) {
            return Container(
              child: (snapshot.hasData)
                  ? Text(snapshot.data!.name!)
                  : const Text('Page 2'),
            );
          },
        ),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          MaterialButton(
              color: Colors.blue,
              onPressed: (() {
                final newUser = User(name: 'Ale', age: 23);
                userService.loadUser(newUser);
              }),
              child: const Text(
                'Set user',
                style: TextStyle(color: Colors.white),
              )),
          MaterialButton(
              color: Colors.blue,
              onPressed: (() {
                userService.changeAge(25);
              }),
              child: const Text(
                'Change age',
                style: TextStyle(color: Colors.white),
              )),
          MaterialButton(
              color: Colors.blue,
              onPressed: (() {}),
              child: const Text(
                'Add profession',
                style: TextStyle(color: Colors.white),
              ))
        ],
      )),
    );
  }
}
