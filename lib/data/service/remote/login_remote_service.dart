import 'package:http/http.dart';
import 'package:telkom_career/base/base_config.dart';
import 'package:telkom_career/domain/model/request/login/login_request.dart';

class LoginRemoteService {
  Client client = Client();

  Future<Response> submitLogin(LoginRequest request) async {
    final url = Uri.https(
      BaseConfig.BASE_DOMAIN_CC,
      BaseConfig.BASE_PATH_CC + BaseConfig.LOGIN_CC,
    );

    return client.post(url, body: request.toJson());
  }
}