import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_states/bloc/user/user_cubit.dart';

import '../models/user.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userCubit = BlocProvider.of<UserCubit>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 1'),
        actions: [
          IconButton(
              onPressed: () {
                userCubit.logOut();
              },
              icon: const Icon(Icons.delete))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, 'page2'),
        child: const Icon(Icons.account_tree),
      ),
      body: BlocBuilder<UserCubit, UserStates>(
        builder: (_, state) {
          if (state is UserInitial) {
            return const Center(child: Text('There are no user info'));
          } else if (state is UserLoaded) {
            return UserInformation(user: state.user);
          }
          // else if (state is ProfessionAdded) {
          //   return const UserInformation(stat);
          // }
          else if (state is UserDeleted) {
            return const Center(child: Text('User Deleted'));
          }
          return const Center(child: Text('State not recognized'));
        },
      ),
    );
  }
}

class UserInformation extends StatelessWidget {
  final User? user;

  const UserInformation({super.key, this.user});

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
        children: <Widget>[
          const Text(
            'General',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const Divider(),
          ListTile(
            title: Text('Name: ${user!.name}'),
          ),
          ListTile(
            title: Text('Age: ${user!.age}'),
          ),
          const Text(
            'Professions',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const Divider(),
          ...user!.professions!.map((profession) => ListTile(
                title: Text(profession),
              )),
        ],
      ),
    );
  }
}
