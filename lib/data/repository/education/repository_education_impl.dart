import 'dart:convert';

import 'package:telkom_career/base/login_moc/base_remote_response.dart';
import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/data/service/remote/profile/education_remote_service.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';
import 'package:telkom_career/domain/model/request/education/update_education_request.dart';
import 'package:telkom_career/domain/repository/education/education_repository.dart';

class UpdateEducationRepositoryImpl implements EducationRepository {
  final updateEducationRepositoryImpl = EducationRemoteService();

  @override
  Future<ResultEntity> addEducation(AuthenticationHeaderRequest header, UpdateEducationRequest request) async{
    try {
      final response = await updateEducationRepositoryImpl.addEducation(header, request);
      if (response.statusCode == 200) {
        BaseRemoteResponseMoc baseResponseAddEducation = BaseRemoteResponseMoc.fromJson(
          jsonDecode(response.body), (json) => null
        );
      if (baseResponseAddEducation.status == null) {
        return ResultError();
      } else if (baseResponseAddEducation.status?.code != 0) {
        return ResultError(message: baseResponseAddEducation.status?.message);
      } else {
        return ResultSuccess(baseResponseAddEducation.data);
      }
    } else {
      return ResultError(message: response.body);
    }
    } catch (e) {
      return ResultError(message: e.toString());
    }
  }
}