import 'package:http/http.dart';
import 'package:telkom_career/base/base_config.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';
import 'package:telkom_career/domain/model/request/work_experience/add_work_experience_request.dart';

class AddWorkExperienceRemoteService {
  Client client = Client();
  Future<Response> addWorkExperience(AddWorkExperienceRequest request, AuthenticationHeaderRequest header) async {
    final url = Uri.http(
      BaseConfig.BASE_DOMAIN,
      BaseConfig.BASE_PATH_MOC + BaseConfig.ADD_WORK_EXPERIENCE
    );
    return client.post(url, body: request.toJson(), headers: header.toHeader());
  }
}