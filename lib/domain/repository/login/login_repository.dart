import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/domain/model/login/login_user_data.dart';
import 'package:telkom_career/domain/model/request/login/login_request.dart';

abstract class LoginRepository {
  Future<ResultEntitiy<UserLoginData>> submitLogin(LoginRequest request);
}