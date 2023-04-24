import 'package:http/http.dart';
import 'package:telkom_career/base/base_config.dart';
import 'package:telkom_career/domain/model/request/education/update_education_request.dart';

class EducationRemoteService {
  Client client = Client();
  Future<Response> updateEducation(UpdateEducationRequest request) async {
    final url = Uri.https(
      BaseConfig.BASE_DOMAIN_CC,
      BaseConfig.BASE_PATH_CC + BaseConfig.ADD_EDUCATION
    );
    return client.post(url, body: request.toJson());
  }
}