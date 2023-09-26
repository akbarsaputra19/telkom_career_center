// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/data/utilities/commons.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';
import 'package:telkom_career/domain/model/request/cvresume/cvresume_request.dart';
import 'package:telkom_career/domain/repository/cv_resume/update_cv_resume_repository.dart';

part 'update_cv_resume_state.dart';

class UpdateCvResumeCubit extends Cubit<UpdateCvResumeState> {
  final UpdateCvResumeRepository repository;
  UpdateCvResumeCubit(
    this.repository,
  ) : super(UpdateCvResumeInitial());

  Future<void> updateCvResume(CvresumeRequest request) async {
    final token = await Commons().getUid();
    emit(UpdateCvResumeIsLoading());
    final response = await repository.updateCvResume(request, AuthenticationHeaderRequest(token));
    if (response is ResultSuccess) {
      emit(UpdateCvResumeIsSuccess(message: "Update Cv/Resume berhasil"));
    } else {
      emit(UpdateCvResumeIsFailed(message: (response as ResultError).message));
    }
  }
}
