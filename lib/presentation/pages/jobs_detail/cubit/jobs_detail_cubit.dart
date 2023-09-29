// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/data/utilities/commons.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';

import 'package:telkom_career/domain/model/jobs_detail/jobs_detail_data.dart';
import 'package:telkom_career/domain/repository/jobs_detail/jobs_detail_repository.dart';

part 'jobs_detail_state.dart';

class JobsDetailCubit extends Cubit<JobsDetailState> {
  final JobsDetailRepository repository;
  JobsDetailCubit(
    this.repository,
  ) : super(const JobsDetailState());

  Future<void> onSubmitDetailJobs(String id) async {
    final token = await Commons().getUid();
    emit(JobsDetailIsLoading());
    final response = await repository.fetchJobsDetail(AuthenticationHeaderRequest(token), id);
    if(response is ResultSuccess) {
      emit(JobsDetailIsSuccess(
        data: (response as ResultSuccess).data
      ));
    } else {
      emit(JobsDetailIsFailed(
        message: (response as ResultError).message
      ));
    }
  }
}
