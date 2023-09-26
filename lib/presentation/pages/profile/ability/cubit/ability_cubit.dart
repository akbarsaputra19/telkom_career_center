import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:http/http.dart';
import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/data/utilities/commons.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';
import 'package:telkom_career/domain/model/request/profile/profile_update_ability/profile_update_ability_request.dart';
import 'package:telkom_career/domain/repository/profile/profile_update_ability_repository.dart';

part 'ability_state.dart';

class AbilityCubit extends Cubit<AbilityState> {
  final ProfileUpdateAbilityRepository repository;
  AbilityCubit(
    this.repository
  ) : super(AbilityInitial());

  Future<void> fetchProfileUpdateAbility(ProfileUpdateAbilityRequest request) async {
    final token = await Commons().getUid();
    emit(AbilityIsLoading());

    final response = await repository.updateProfileAbilityRepository(AuthenticationHeaderRequest(token), request);

    if (response is ResultSuccess) {
      emit(AbilityIsSuccess("Update Ability Success")
      );
    } else {
      emit(AbilityIsFailed(message: (response as ResultError).message));
    }
  }
}
