import 'package:flutter/material.dart';
import 'package:flutter_states/services/usuario_service.dart';
import 'package:provider/provider.dart';

import '../models/user.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userService = Provider.of<UserService>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 1'),
        actions: [
          IconButton(
              onPressed: () => userService.deleteUser(userService.user!),
              icon: const Icon(Icons.exit_to_app_outlined))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, 'page2'),
        child: const Icon(Icons.account_tree),
      ),
      body: (userService.existUser)
          ? UserInformation(user: userService.user!)
          : const Center(child: Text('No users')),
    );
  }
}

class UserInformation extends StatelessWidget {
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
        mainAxisAlignment: MainAxisAlignment.start,
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
          ...user.professions!.map(
            (profession) => ListTile(
              title: Text(profession),
            ),
          ),
        ],
      ),
    );
  }
}
