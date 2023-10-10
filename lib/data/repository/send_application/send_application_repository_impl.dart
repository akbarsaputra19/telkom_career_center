import 'dart:convert';

import 'package:telkom_career/base/login_moc/base_remote_response.dart';
import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/data/service/remote/send_application/send_application_remote_service.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';
import 'package:telkom_career/domain/model/request/send_application/send_application_request.dart';
import 'package:telkom_career/domain/repository/send_application/send_application_repository.dart';

class SendApplicationRepositoryImpl implements SendApplicationRepository {
  final sendApplicationRepositoryImpl = SendApplicationRemoteService();

  @override
  Future<ResultEntity> submitSendApplication(AuthenticationHeaderRequest header, SendApplicationRequest request) async{
    try {
      final response = await sendApplicationRepositoryImpl.submitSendApplication(header, request);
      if (response.statusCode == 200) {
        BaseRemoteResponseMoc baseResponseSubmitSendApplication = BaseRemoteResponseMoc.fromJson(
          jsonDecode(response.body), (json) => null
        );
      if (baseResponseSubmitSendApplication.status == null) {
        return ResultError();
      } else if (baseResponseSubmitSendApplication.status?.code != 0) {
        return ResultError(message: baseResponseSubmitSendApplication.status?.message);
      } else {
        return ResultSuccess(baseResponseSubmitSendApplication.data);
      }
      } else {
        return ResultError(message: response.body);
      }
    } catch (e) {
      return ResultError(message: e.toString());
    }
  }
}