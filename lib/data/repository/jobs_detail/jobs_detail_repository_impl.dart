import 'dart:convert';

import 'package:telkom_career/base/base_remote_response.dart';
import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/data/model/jobs_detail/jobs_detail_remote_response.dart';
import 'package:telkom_career/data/service/remote/jobs_detail/jobs_detail_remote_service.dart';
import 'package:telkom_career/domain/model/jobs_detail/jobs_detail_data.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';
import 'package:telkom_career/domain/repository/jobs_detail/jobs_detail_repository.dart';

class JobsDetailRepositoryImpl implements JobsDetailRepository {
  final jobsDetailRemoteService = JobsDetailRemoteService();

  @override
  Future<ResultEntity<JobsDetailData>> fetchJobsDetail(AuthenticationHeaderRequest header, String id) async {
    try {
      final response = await jobsDetailRemoteService.fetchJobsDetail(header, id);
      if (response.statusCode == 200 || response.statusCode == 201){
        BaseRemoteResponseCC<JobsDetailRemoteResponse> baseResponseeObject = 
          BaseRemoteResponseCC<JobsDetailRemoteResponse>.fromJson(
            jsonDecode(response.body), (json) => JobsDetailRemoteResponse.fromJson(json as Map<String, dynamic>));

            if (baseResponseeObject.status == null) {
              return ResultError(message: baseResponseeObject.status!.message);
            } else if (baseResponseeObject.status?.code != 0) {
              return ResultError(message: baseResponseeObject.status!.message);
            } else {
              return ResultSuccess(baseResponseeObject.data!.toJobsDetailData());
            }
      } else {
        return ResultError(message: "");
      }
    } catch (error) {
      return ResultError(message: "");
    }
  }
}