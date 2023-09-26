import 'dart:convert';

import 'package:telkom_career/base/login_moc/base_remote_response.dart';
import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/data/service/remote/cv_resume/update_cv_resume_remote_service.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';
import 'package:telkom_career/domain/model/request/cvresume/cvresume_request.dart';
import 'package:telkom_career/domain/repository/cv_resume/update_cv_resume_repository.dart';

class UpdateCvResumeRepositoryImpl implements UpdateCvResumeRepository {
  final cvResumeRemoteService = UpdateCvResumeRemoteService();

  @override
  Future<ResultEntity> updateCvResume(CvresumeRequest request, AuthenticationHeaderRequest header) async {
    try{
      final response = await cvResumeRemoteService.updateCvResume(request, header);
      if (response.statusCode == 200) {
        BaseRemoteResponseMoc baseResponseCvResume = BaseRemoteResponseMoc.fromJson(
          jsonDecode(response.body), (json) => null
        );
      if (baseResponseCvResume.status == null) {
        return ResultError();
      } else if (baseResponseCvResume.status?.code != 0) {
        return ResultError(message: baseResponseCvResume.status?.message);
      } else {
        return ResultSuccess(baseResponseCvResume.data);
      }
      } else {
        return ResultError(message: "");
      }
    } catch (err) {
      return ResultError(message: "");
    }
  }

}