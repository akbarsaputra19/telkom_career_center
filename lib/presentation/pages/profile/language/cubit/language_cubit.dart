import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/data/utilities/commons.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';
import 'package:telkom_career/domain/model/request/profile/profile_update_language/profile_update_language_request.dart';
import 'package:telkom_career/domain/repository/profile/profile_update_language_repository.dart';

part 'language_state.dart';

class LanguageCubit extends Cubit<LanguageState> {
  final ProfileUpdateLanguageRepository repository;
  LanguageCubit(
    this.repository
  ) : super(LanguageInitial());

  Future<void> fetchProfileUpdateLanguage(ProfileUpdateLanguageRequest request) async {
    final token = await Commons().getUid();
    emit(LanguageIsLoading());
    final response = await repository.updateProfileLanguageRepository(AuthenticationHeaderRequest(token), request);

    if (response is ResultSuccess) {
      emit(LanguageIsSuccess("Update Language Success")
      );
    } else {
      emit(LanguageIsFailed(message: (response as ResultError).message));
    }
  }
}