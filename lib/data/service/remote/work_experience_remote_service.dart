import 'package:http/http.dart';
import 'package:telkom_career/base/base_config.dart';

class AddWorkExperienceRemoteService {
  Client client = Client();

  Future<Response> addWorkExperience(String id, String profileId) async {
    final url = Uri.https(
      BaseConfig.BASE_DOMAIN_CC,
      BaseConfig.BASE_PATH_CC + BaseConfig.ADD_WORK_EXPERIENCE);
    return client.post(url, body: {"Masukan id": id, "Masukan profileId": profileId});
  }
}