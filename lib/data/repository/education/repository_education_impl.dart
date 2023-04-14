import 'dart:convert';

import 'package:telkom_career/base/base_remote_response.dart';
import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/data/model/education/education_remote_response.dart';
import 'package:telkom_career/data/service/remote/education_remote_service.dart';
import 'package:telkom_career/domain/model/profile/update_education.dart';
import 'package:telkom_career/domain/model/request/education/update_education_request.dart';
import 'package:telkom_career/domain/repository/education/education_repository.dart';

class UpdateEducationRepositoryImpl implements EducationRepository {
  final remoteService = EducationRemoteService();

  @override
  Future<ResultEntitiy<UpdateEducation>> updateEducation(UpdateEducationRequest request) async{
    try {
      final response = await remoteService.updateEducation(request);
      if (response.statusCode == 200 || response.statusCode == 201){
        BaseRemoteResponseCC<EducationRemoteResponse> baseResponseeObject = 
          BaseRemoteResponseCC<EducationRemoteResponse>.fromJson(
            jsonDecode(response.body), (json) => EducationRemoteResponse.fromJson(json as Map<String, dynamic>));

            if (baseResponseeObject.status == null) {
              return ResultError(message: baseResponseeObject.status!.message);
            } else if (baseResponseeObject.status?.code != 0) {
              return ResultError(message: baseResponseeObject.status!.message);
            } else {
              return ResultSuccess(baseResponseeObject.data!.toUpdateEducation());
            }
      } else {
        return ResultError(message: "");
      }
    } catch (error) {
      return ResultError(message: "");
    }
  }
}