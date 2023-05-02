import 'package:telkom_career/base/result_entity.dart';

abstract class UpdateCvResumeRepository {
  Future<ResultEntitiy> updateCvResume(String id, String profileId);
}