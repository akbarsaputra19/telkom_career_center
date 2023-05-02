// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'update_cv_resume_cubit.dart';

abstract class UpdateCvResumeState extends Equatable {
  const UpdateCvResumeState();

  @override
  List<Object> get props => [];
}

class UpdateCvResumeInitial extends UpdateCvResumeState {}

class UpdateCvResumeIsSuccess extends UpdateCvResumeState {
  String? message;
  UpdateCvResumeIsSuccess({
    this.message,
  });
}

class UpdateCvResumeIsFailed extends UpdateCvResumeState {
  String? message;
  UpdateCvResumeIsFailed({
    this.message,
  });
}

class UpdateCvResumeIsLoading extends UpdateCvResumeState {}