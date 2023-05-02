// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'jobs_detail_cubit.dart';

abstract class JobsDetailState extends Equatable {
  const JobsDetailState();

  @override
  List<Object> get props => [];
}

class JobsDetailInitial extends JobsDetailState {}

class JobsDetailIsSuccess extends JobsDetailState {
  JobsDetailData? data;
  JobsDetailIsSuccess({
    this.data,
  });
}

class JobsDetailIsFailed extends JobsDetailState {
 String? message;
  JobsDetailIsFailed({
    this.message,
  });
}

class JobsDetailIsLoading extends JobsDetailState {}