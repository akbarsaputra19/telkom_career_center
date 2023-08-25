import 'package:http/http.dart';
import 'package:telkom_career/base/base_config.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';
import 'package:telkom_career/domain/model/request/education/update_education_request.dart';

class EducationRemoteService {
  Client client = Client();
  Future<Response> addEducation(UpdateEducationRequest request, AuthenticationHeaderRequest header) async {
    final url = Uri.http(
      BaseConfig.BASE_DOMAIN_MOC,
      BaseConfig.BASE_PATH_MOC + BaseConfig.ADD_EDUCATION
    );
    return client.post(url, body: request.toJson(), headers: header.toHeader());
  }
}