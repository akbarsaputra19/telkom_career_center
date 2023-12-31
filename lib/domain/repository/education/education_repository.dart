import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';
import 'package:telkom_career/domain/model/request/profile/education/update_education_request.dart';

abstract class EducationRepository {
  Future<ResultEntity> addEducation(AuthenticationHeaderRequest header, UpdateEducationRequest request);
}