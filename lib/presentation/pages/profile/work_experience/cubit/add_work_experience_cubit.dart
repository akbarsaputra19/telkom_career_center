import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/domain/model/request/work_experience/add_work_experience_request.dart';
import 'package:telkom_career/domain/repository/work_experience/add_work_experience_repository.dart';

part 'add_work_experience_state.dart';

class AddWorkExperienceCubit extends Cubit<AddWorkExperienceState> {
  final AddWorkExperienceRepository repository;
  AddWorkExperienceCubit(
    this.repository
  ) : super(AddWorkExperienceInitial());

  Future<void> addWorkExperience(AddWorkExperienceRequest request) async {
    emit(AddWorkExperienceIsLoading());

    final response = await repository.addWorkExperience(request);
    if (response is ResultSuccess) {
      if (response.data == null);

      emit(AddWorkExperienceIsSuccess(message: ""));
    } else if (response is ResultError) {
      emit(AddWorkExperienceIsFailed(message: response.message));
    }
  }
}
