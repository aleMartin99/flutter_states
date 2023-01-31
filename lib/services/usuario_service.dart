import 'package:flutter/cupertino.dart';
import 'package:flutter_states/models/user.dart';

class UserService with ChangeNotifier {
  User? _user;

  User? get user => _user;

  bool get existUser => (_user != null) ? true : false;

  set user(User? user) {
    _user = user;
    notifyListeners();
  }

  void changeAge(int age) {
    _user!.age = age;
    notifyListeners();
  }

  void deleteUser(User user) {
    _user = null;
    notifyListeners();
  }

  void addProfession(String profession) {
    _user!.professions!.add(profession);
    notifyListeners();
  }
}
