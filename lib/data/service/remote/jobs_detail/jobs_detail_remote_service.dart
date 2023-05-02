import 'package:http/http.dart';
import 'package:telkom_career/base/base_config.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';

class JobsDetailRemoteService {
  Client client = Client();
  Future<Response> fetchJobsDetail(AuthenticationHeaderRequest header, String id) async {
    final url = Uri.https(
      BaseConfig.BASE_DOMAIN_CC,
      BaseConfig.BASE_PATH_CC + BaseConfig.JOBS_DETAIL + "$id"
    );
    print(url);
    return client.get(url, headers: header.toHeader());
  }
}