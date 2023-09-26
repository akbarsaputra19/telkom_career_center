// ignore_for_file: avoid_print, unnecessary_string_interpolations, prefer_interpolation_to_compose_strings, unnecessary_brace_in_string_interps

import 'package:http/http.dart';
import 'package:telkom_career/base/base_config.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';

class JobsDetailRemoteService {
  Client client = Client();
  Future<Response> fetchJobsDetail(AuthenticationHeaderRequest header, String id) async {
    final url = Uri.http(
      BaseConfig.BASE_DOMAIN_MOC,
      BaseConfig.BASE_PATH_MOC + BaseConfig.JOBS_DETAIL + "$id"
    );
    print("url : ${url}");
    return client.get(url, headers: header.toHeader());
  }
}