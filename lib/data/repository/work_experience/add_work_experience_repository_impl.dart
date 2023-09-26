import 'dart:convert';

import 'package:telkom_career/base/login_moc/base_remote_response.dart';
import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/data/service/remote/work_experience_remote_service.dart';
import 'package:telkom_career/domain/model/request/work_experience/add_work_experience_request.dart';
import 'package:telkom_career/domain/repository/work_experience/add_work_experience_repository.dart';

class AddWorkExperienceRepositoryImpl implements AddWorkExperienceRepository {
  final addWorkExperienceRemoteService = AddWorkExperienceRemoteService();

  @override
  Future<ResultEntity> addWorkExperience(AddWorkExperienceRequest request) async {
    try {
      final response = await addWorkExperienceRemoteService.addWorkExperience(request);
      if (response.statusCode == 200) {
        BaseRemoteResponseMoc baseResponseAddWorkExperience = BaseRemoteResponseMoc.fromJson(
          jsonDecode(response.body), (json) => null
        );
      if (baseResponseAddWorkExperience.status == null) {
        return ResultError();
      } else if (baseResponseAddWorkExperience.status?.code != 0) {
        return ResultError(message: baseResponseAddWorkExperience.status?.message);
      } else {
        return ResultSuccess(baseResponseAddWorkExperience.data);
      }
    } else {
      return ResultError(message: response.body);
    } 
    } catch (e) {
      return ResultError(message: e.toString());
    }
  }
}