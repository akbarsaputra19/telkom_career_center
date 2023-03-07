import 'package:equatable/equatable.dart';

abstract class ResultEntitiy<Z> extends Equatable {
  @override
  List<Object?> get props => [];
}

class ResultSuccess<Z> implements ResultEntitiy<Z> {
  final Z data;

  ResultSuccess(this.data);

  @override
  List<Object?> get props => [data];

  @override
  bool? get stringify => true;
}

class ResultError<Z> implements ResultEntitiy<Z> {
  final String? message;

  ResultError({this.message});

  @override
  List<Object?> get props => [message];

  @override
  bool? get stringify => true;
}