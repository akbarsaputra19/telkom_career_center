import 'package:http/http.dart';
import 'package:telkom_career/base/base_config.dart';
import 'package:telkom_career/domain/model/request/work_experience/add_work_experience_request.dart';

class AddWorkExperienceRemoteService {
  Client client = Client();

  Future<Response> addWorkExperience(AddWorkExperienceRequest request) async {
    final url = Uri.https(
      BaseConfig.BASE_DOMAIN_CC,
      BaseConfig.BASE_PATH_CC + BaseConfig.ADD_WORK_EXPERIENCE);
    return client.post(url, body: request.toJson());
  }
}