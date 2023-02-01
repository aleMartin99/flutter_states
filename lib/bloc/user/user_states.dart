part of 'user_cubit.dart';

@immutable
abstract class UserStates {}

class UserInitial extends UserStates {
  final existUser = false;
}

class UserLoaded extends UserStates {
  final existUser = true;
  final User user;

  UserLoaded(this.user);
}

class UserDeleted extends UserStates {
  final existUser = false;
  final user = null;
}

class ProfessionAdded extends UserStates {
  final existUser = true;
  final String profession;

  ProfessionAdded(this.profession);
}
