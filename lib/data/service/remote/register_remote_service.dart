import 'package:http/http.dart';

class RegisterRemoteService {
  Client client = Client();

  Future<Response> register(String email, String username, String password) async {
    final url = Uri.https('fakestoreapi.com', '/users');
    return client.post(url, body: {
      "email" : email,
      "username" : username,
      "password" : password
    });
  }
}