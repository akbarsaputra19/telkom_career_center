import 'package:telkom_career/base/result_entity.dart';

abstract class AddWorkExperienceRepository {
  Future<ResultEntitiy> addWorkExperience(String id, String profileId);
}