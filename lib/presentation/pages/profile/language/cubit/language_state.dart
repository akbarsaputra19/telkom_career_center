// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'language_cubit.dart';

class LanguageState extends Equatable {
  const LanguageState();

  @override
  List<Object> get props => [];
}

class LanguageInitial extends LanguageState {}

class LanguageIsLoading extends LanguageState {}

class LanguageIsSuccess extends LanguageState {
  String? message;
  LanguageIsSuccess(
    this.message,
  );
}

class LanguageIsFailed extends LanguageState {
  String? message;
  LanguageIsFailed({
    this.message,
  });
}
