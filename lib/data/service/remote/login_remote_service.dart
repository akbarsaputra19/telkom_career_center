import 'package:http/http.dart';
import 'package:telkom_career/base/base_config.dart';
import 'package:telkom_career/domain/model/request/login/login_request.dart';

class LoginRemoteService {
  Client client = Client();

  Future<Response> submitLogin(LoginRequest request) async {
    final url = Uri.http(
      BaseConfig.BASE_DOMAIN_MOC,
      BaseConfig.BASE_PATH_MOC + BaseConfig.LOGIN_MOC,
    );

    return client.post(url, body: request.toJson());
  }
}