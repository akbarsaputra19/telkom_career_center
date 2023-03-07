// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class UserLoginEvent extends LoginEvent {
  final String email;
  final String password;
  const UserLoginEvent({
    required this.email,
    required this.password,
  });
}

class LogoutUser extends LoginEvent {}