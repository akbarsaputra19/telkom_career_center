import 'package:http/http.dart';
import 'package:telkom_career/base/base_config.dart';
import 'package:telkom_career/domain/model/request/register/register_request.dart';

class RegisterRemoteService {
  Client client = Client();

  Future<Response> register(RegisterRequest request) async {
    final url = Uri.https(
      BaseConfig.BASE_DOMAIN_CC,
      BaseConfig.BASE_PATH_CC + BaseConfig.REGISTER_CC
    );
    return client.post(url, body: request.toJson());
  }
}