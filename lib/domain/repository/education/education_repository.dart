import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/domain/model/profile/update_education.dart';
import 'package:telkom_career/domain/model/request/education/update_education_request.dart';

abstract class EducationRepository {
  Future<ResultEntitiy<UpdateEducation>> updateEducation(UpdateEducationRequest request);
}