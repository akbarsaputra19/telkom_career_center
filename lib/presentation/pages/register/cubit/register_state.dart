// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'register_cubit.dart';

abstract class RegisterState extends Equatable {
  const RegisterState();

  @override
  List<Object> get props => [];
}

class RegisterInitial extends RegisterState {}

class RegisterIsLoading extends RegisterState {}

class RegisterIsSuccess extends RegisterState {
  String? data;
  RegisterIsSuccess({
    this.data,
  });
}

class RegisterIsFailed extends RegisterState {
  String? message;
  RegisterIsFailed({
    this.message,
  });
}
