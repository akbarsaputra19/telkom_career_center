import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';
import 'package:telkom_career/domain/model/request/profile/cvresume/cvresume_request.dart';

abstract class UpdateCvResumeRepository {
  Future<ResultEntity> updateCvResume(AuthenticationHeadersRequestUpload header, CvresumeRequest request);
}