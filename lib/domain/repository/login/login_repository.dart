import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/domain/model/login/login_user_data.dart';

abstract class LoginRepository {
  Future<ResultEntitiy<LoginUserData>> userLogin(String email, String password);
}