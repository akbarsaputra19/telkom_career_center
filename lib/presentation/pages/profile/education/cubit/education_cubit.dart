import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';
import 'package:telkom_career/domain/model/request/profile/education/update_education_request.dart';
import 'package:telkom_career/domain/repository/education/education_repository.dart';
import 'package:telkom_career/utilities/common.dart';

part 'education_state.dart';

class EducationCubit extends Cubit<EducationState> {
  final EducationRepository repository;
  EducationCubit(
    this.repository,
  ) : super(EducationInitial());

  Future<void> onAddEducation(UpdateEducationRequest request) async {
    final token = await Commons().getUid();
    emit(EducationIsLoading());
    final response = await repository.addEducation(AuthenticationHeaderRequest(token), request);
    if (response is ResultSuccess) {
      emit(EducationIsSuccess("Update Education Success"));
    } else {
      emit(EducationIsFailed((response as ResultError).message));
    }
  }
}