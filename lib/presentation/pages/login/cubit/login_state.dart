part of 'login_cubit.dart';

abstract class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

class LoginInitial extends LoginState {}

class LoginIsSuccess extends LoginState {
  UserLoginData? data;
  LoginIsSuccess({
    this.data
  });
}

class LoginIsFailed extends LoginState {
  String? message;
  LoginIsFailed({
    this.message
  });
}

class LoginIsLoading extends LoginState {}