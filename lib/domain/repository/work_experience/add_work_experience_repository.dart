import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/domain/model/request/work_experience/add_work_experience_request.dart';

abstract class AddWorkExperienceRepository {
  Future<ResultEntitiy> addWorkExperience(AddWorkExperienceRequest request);
}