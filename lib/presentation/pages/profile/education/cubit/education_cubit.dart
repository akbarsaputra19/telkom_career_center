import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/domain/model/profile/update_education.dart';
import 'package:telkom_career/domain/model/request/education/update_education_request.dart';
import 'package:telkom_career/domain/repository/education/education_repository.dart';

part 'education_state.dart';

class EducationCubit extends Cubit<EducationState> {
  final EducationRepository repository;
  EducationCubit(
    this.repository,
  ) : super(EducationInitial());

  Future<void> onUpdateEducation(String? level, String? name, String? major, String? stillEducation, String? startEducation, String? endEducation, String? description) async {
    emit(EducationIsLoading());
    final request = UpdateEducationRequest(level: level, name: name, major: major, stillEducation: stillEducation, startEducation: startEducation, endEducation: endEducation, description: description);
    final response = await repository.updateEducation(request);
    if (response is ResultSuccess) {
      emit(EducationIsSuccess(message: "Update pendidikan berhasil"));
      final token = (response as ResultSuccess).data;
      print(token);
    } else {
      emit(EducationIsFailed(message: (response as ResultError).message));
    }
  }
}
