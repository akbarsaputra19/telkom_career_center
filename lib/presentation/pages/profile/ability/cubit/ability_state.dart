// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'ability_cubit.dart';

class AbilityState extends Equatable {
  const AbilityState();

  @override
  List<Object> get props => [];
}

class AbilityInitial extends AbilityState {}

class AbilityIsLoading extends AbilityState {}

class AbilityIsSuccess extends AbilityState {
  String? message;
  AbilityIsSuccess(
    this.message
  );
}

class AbilityIsFailed extends AbilityState {
  String? message;
  AbilityIsFailed({
    this.message,
  });
}
