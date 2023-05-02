import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';
import 'package:telkom_career/domain/model/jobs_detail/jobs_detail_data.dart';

abstract class JobsDetailRepository {
  Future<ResultEntitiy<JobsDetailData>> fetchJobsDetail(AuthenticationHeaderRequest header, String id);
}