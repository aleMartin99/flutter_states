import 'package:flutter/material.dart';

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
      body: UserInformation(),
    );
  }
}

class UserInformation extends StatelessWidget {
  // const UserInformation({
  //   Key? key,
  // }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: double.infinity,
      height: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const <Widget>[
          Text(
            'General',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Divider(),
          ListTile(
            title: Text('Name'),
          ),
          ListTile(
            title: Text('Age'),
          ),
          Text(
            'Professions',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Divider(),
          ListTile(
            title: Text('Profesion1'),
          ),
          ListTile(
            title: Text('Profesion2'),
          ),
          ListTile(
            title: Text('Profesion3'),
          ),
        ],
      ),
    );
  }
}
