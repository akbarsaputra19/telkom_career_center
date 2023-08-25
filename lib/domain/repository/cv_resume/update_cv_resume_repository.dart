import 'package:telkom_career/base/result_entity.dart';

abstract class UpdateCvResumeRepository {
  Future<ResultEntity> updateCvResume(String id, String profileId);
}