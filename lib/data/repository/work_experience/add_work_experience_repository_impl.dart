import 'dart:convert';

import 'package:telkom_career/base/base_remote_response.dart';
import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/data/service/remote/work_experience_remote_service.dart';
import 'package:telkom_career/domain/model/request/work_experience/add_work_experience_request.dart';
import 'package:telkom_career/domain/repository/work_experience/add_work_experience_repository.dart';

class AddWorkExperienceRepositoryImpl implements AddWorkExperienceRepository {
  final addWorkExperienceRemoteService = AddWorkExperienceRemoteService();

  @override
  Future<ResultEntitiy> addWorkExperience(AddWorkExperienceRequest request) async {
    try {
      final response = 
        await addWorkExperienceRemoteService.addWorkExperience(request);
      if (response.statusCode == 200 || response.statusCode == 201) {
        BaseRemoteResponseCC baseResponseArray = BaseRemoteResponseCC.fromJson(
          jsonDecode(response.body), (json) => null
        );
      if (baseResponseArray.status == null) {
        return ResultError();
      } else if (baseResponseArray.status?.code != 0) {
        return ResultError(message: baseResponseArray.status?.message);
      } else {
        return ResultSuccess(baseResponseArray.data);
      }
    } else {
      return ResultError(message: "");
      } 
    } catch (e) {
      return ResultError(message: "");
    }
  }
}