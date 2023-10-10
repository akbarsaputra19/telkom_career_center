// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'send_application_cubit.dart';

abstract class SendApplicationState extends Equatable {
  const SendApplicationState();

  @override
  List<Object> get props => [];
}

class SendApplicationInitial extends SendApplicationState {}

class SendApplicationIsLoading extends SendApplicationState {}

class SendApplicationIsSuccess extends SendApplicationState {
  String? message;
  SendApplicationIsSuccess(
    this.message,
  );
}

class SendApplicationIsFailed extends SendApplicationState {
  String? message;
  SendApplicationIsFailed(
    this.message,
  );
}
