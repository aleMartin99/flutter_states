import 'package:meta/meta.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/user.dart';

part 'user_states.dart';

class UserCubit extends Cubit<UserStates> {
  UserCubit() : super(UserInitial());

  void loadUser(User user) {
    emit(UserLoaded(user));
  }

  void deleteUser() {
    emit(UserDeleted());
  }

  void logOut() {
    emit(UserInitial());
  }

  void addProfession(String profession) {
    final currentState = state;
    if (currentState is UserLoaded) {
      final newProfessions = [...?currentState.user.professions, profession];
      final newUser = currentState.user.copyWith(professions: newProfessions);
      emit(UserLoaded(newUser));
    }
  }

  void changeAge(int age) {
    final currentState = state;
    if (currentState is UserLoaded) {
      final newUser = currentState.user.copyWith(age: age);
      emit(UserLoaded(newUser));
    }
  }
}
