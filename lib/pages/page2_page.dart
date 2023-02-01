import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_states/bloc/user/user_cubit.dart';

import '../models/user.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userCubit = BlocProvider.of<UserCubit>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 2'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          MaterialButton(
              color: Colors.blue,
              onPressed: (() {
                final User newUser = User(
                    name: 'Ale',
                    age: 23,
                    professions: ['Game dev', 'Flutter dev']);
                userCubit.loadUser(newUser);
              }),
              child: const Text(
                'Set user',
                style: TextStyle(color: Colors.white),
              )),
          MaterialButton(
              color: Colors.blue,
              onPressed: (() {
                userCubit.changeAge(30);
              }),
              child: const Text(
                'Change age',
                style: TextStyle(color: Colors.white),
              )),
          MaterialButton(
              color: Colors.blue,
              onPressed: (() {
                userCubit.addProfession('Flaaaawad dev');
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
