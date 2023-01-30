import 'package:flutter/material.dart';

import 'package:flutter_states/services/user_service.dart';

import '../models/user.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 1'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, 'page2'),
        child: const Icon(Icons.account_tree),
      ),
      body: StreamBuilder(
        stream: userService.userStream,
        builder: (BuildContext context, AsyncSnapshot<User> snapshot) {
          return snapshot.hasData
              ? UserInformation(
                  user: snapshot.data!,
                )
              : const Center(child: Text('There are not users'));
        },
      ),
    );
  }
}

class UserInformation extends StatelessWidget {
  // const UserInformation({
  //   Key? key,
  // }) : super(key: key);

  final User user;

  const UserInformation({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: double.infinity,
      height: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            'General',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const Divider(),
          ListTile(
            title: Text('Name: ${user.name}'),
          ),
          ListTile(
            title: Text('Age: ${user.age}'),
          ),
          const Text(
            'Professions',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const Divider(),
          const ListTile(
            title: Text('Profesion1'),
          ),
          const ListTile(
            title: Text('Profesion2'),
          ),
          const ListTile(
            title: Text('Profesion3'),
          ),
        ],
      ),
    );
  }
}
