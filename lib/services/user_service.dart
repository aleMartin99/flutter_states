import 'dart:async';

import 'package:flutter_states/models/user.dart';

class _UserService {
  User? _user;

  final StreamController<User> _userStreamController =
      StreamController<User>.broadcast();

  User get user => _user!;
  bool get areUser => (_user != null) ? true : false;

  Stream<User> get userStream => _userStreamController.stream;

  void loadUser(User userL) {
    _user = userL;
    _userStreamController.add(userL);
  }

  void changeAge(int age) {
    _user!.age = age;
    _userStreamController.add(_user!);
  }
}

final userService = _UserService();
