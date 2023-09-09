import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/domain/model/data/login_moc/login_user_data.dart';
import 'package:telkom_career/domain/model/request/login/login_request.dart';

abstract class LoginRepository {
  Future<ResultEntity<UserLoginDataMoc>> submitLogin(LoginRequest request);
}