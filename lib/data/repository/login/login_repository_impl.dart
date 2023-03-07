// import 'dart:convert';

// import 'package:telkom_career/base/result_entity.dart';
// import 'package:telkom_career/data/model/login/login_remote_response.dart';
// import 'package:telkom_career/data/service/remote/login_remote_service.dart';
// import 'package:telkom_career/domain/model/login/login_user_data.dart';
// import 'package:telkom_career/domain/repository/login/login_repository.dart';

// class LoginRepositoryImpl implements LoginRepository {
//   final loginRemoteService = LoginRemoteService();

//   @override
//   Future<ResultEntitiy<LoginUserData>>userLogin(String email, String password) async{
//     try {
//       final response = await loginRemoteService.loginUser(email, password);
//       if (response.statusCode == 200) {
//         var json = LoginRemoteResponse.fromJson(jsonDecode(response.body)).toLoginUserData();
//         return ResultSuccess<LoginUserData>(json);
//       } else {
//         return ResultError(message: response.body);
//       }
//     } catch (err) {
//       return ResultError(message: err.toString());
//     }
//   }
// }