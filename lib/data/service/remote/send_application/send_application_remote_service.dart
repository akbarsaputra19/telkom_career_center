import 'dart:convert';

import 'package:http/http.dart';
import 'package:telkom_career/base/base_config.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';
import 'package:telkom_career/domain/model/request/send_application/send_application_request.dart';

class SendApplicationRemoteService {
  Client client = Client();
  Future<Response> submitSendApplication(AuthenticationHeaderRequest header, SendApplicationRequest request) async {
    final url = Uri.http(
      BaseConfig.BASE_DOMAIN_MOC,
      BaseConfig.BASE_PATH_MOC + BaseConfig.JOBS_APLICATION
    );
    return client.post(url, body: jsonEncode(request.toJson()), headers: header.toHeader());
  }
}