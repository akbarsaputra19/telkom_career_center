import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';
import 'package:telkom_career/domain/model/request/send_application/send_application_request.dart';
import 'package:telkom_career/domain/repository/send_application/send_application_repository.dart';
import 'package:telkom_career/utilities/common.dart';

part 'send_application_state.dart';

class SendApplicationCubit extends Cubit<SendApplicationState> {
  final SendApplicationRepository repository;
  SendApplicationCubit(
    this.repository,
  ) : super(SendApplicationInitial());

  Future<void> submitSendApplication(SendApplicationRequest request) async {
    final token = await Commons().getUid();
    emit(SendApplicationIsLoading());
    final response = await repository.submitSendApplication(AuthenticationHeaderRequest(token), request);
    if (response is ResultSuccess) {
      emit(SendApplicationIsSuccess("Send Application Success"));
    } else {
      emit(SendApplicationIsFailed((response as ResultError).message));
    }
  }
}