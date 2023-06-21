part of 'user_cubit.dart';

@immutable
abstract class UserState {}

class UserInitial extends UserState {}

class UserLoading extends UserState {}

class UserLoaded extends UserState {
  final UserListModel userListModel;

  UserLoaded(this.userListModel);
}

class UserError extends UserState {
  final String message;

  UserError(this.message);
}
