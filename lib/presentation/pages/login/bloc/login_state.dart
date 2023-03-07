part of 'login_bloc.dart';

abstract class LoginState extends Equatable {
  const LoginState();
  
  @override
  List<Object> get props => [];
}

class LoginInitial extends LoginState {}

class LoginIsLoading extends LoginState {}

class LoginIsSuccess extends LoginState {
  final List<LoginUserData> logins;
  final List<LoginStatus> statuses;
  const LoginIsSuccess(this.logins, this.statuses);
}

class LoginIsFailed extends LoginState{
  final String? error;
  const LoginIsFailed({this.error});
}