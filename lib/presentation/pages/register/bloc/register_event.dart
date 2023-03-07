// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'register_bloc.dart';

abstract class RegisterEvent extends Equatable {
  const RegisterEvent();

  @override
  List<Object> get props => [];
}

class UserRegisterEvent extends RegisterEvent {
  final String email;
  final String username;
  final String password;
  
  const UserRegisterEvent({
    required this.email,
    required this.username,
    required this.password,
  });
}
