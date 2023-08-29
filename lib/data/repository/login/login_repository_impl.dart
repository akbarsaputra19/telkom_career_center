import 'dart:convert';

import 'package:telkom_career/base/base_remote_response.dart';
import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/data/model/login/login_remote_response.dart';
import 'package:telkom_career/data/service/remote/login_remote_service.dart';
import 'package:telkom_career/domain/model/login/login_user_data.dart';
import 'package:telkom_career/domain/model/request/login/login_request.dart';
import 'package:telkom_career/domain/repository/login/login_repository.dart';

class LoginRepositoryImpl implements LoginRepository {
  final remoteService = LoginRemoteService();

  @override
  Future<ResultEntity<UserLoginDataMoc>> submitLogin(LoginRequest request) async {
    try {
      final response = await remoteService.submitLogin(request);
      if (response.statusCode == 200 || response.statusCode == 201) {
        BaseRemoteResponseCC<LoginRemoteResponse> baseResponseeObject =
          BaseRemoteResponseCC<LoginRemoteResponse>.fromJson(
            jsonDecode(response.body), (json) => LoginRemoteResponse.fromJson(json as Map<String, dynamic>));

            LoginRemoteResponse.fromJson(jsonDecode(response.body));

            if (baseResponseeObject.status == null) {
              return ResultError(message: baseResponseeObject.status!.message);
            } else if (baseResponseeObject.status?.code != 0) {
              return ResultError(message: baseResponseeObject.status!.message);
            } else {
              return ResultSuccess(baseResponseeObject.data!.toUserLoginDataMoc());
            }
      } else {
        return ResultError(message: "");
      }
    } catch (error) {
      return ResultError(message: "");
    }
  }
}