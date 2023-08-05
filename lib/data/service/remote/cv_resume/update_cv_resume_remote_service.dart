import 'package:http/http.dart';
import 'package:telkom_career/base/base_config.dart';

class UpdateCvResumeRemoteService {
  Client client = Client();
  Future<Response> updateCvResume(String id, String profileId) async {
    final url = Uri.https(
      BaseConfig.BASE_DOMAIN,
      BaseConfig.BASE_PATH_MOC + BaseConfig.UPDATE_CV_RESUME
    );
    return client.post(url, body: {"Masukan id": id, "Masukan profileId": profileId});
  }
}