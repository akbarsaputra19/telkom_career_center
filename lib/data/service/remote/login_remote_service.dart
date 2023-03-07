import 'package:http/http.dart';

class LoginRemoteService {
  Client client = Client();

  Future<Response>loginUser(String email, String password) async {
    final url = Uri.https(
      "",
      ""
    );
    return client.post(
    url, body: {
      "Email": email,
      "Password": password
    });
  }
}