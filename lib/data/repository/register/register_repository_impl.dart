import 'dart:convert';

import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/data/model/register/register_remote_response.dart';
import 'package:telkom_career/data/service/remote/register_remote_service.dart';
import 'package:telkom_career/domain/model/register/register_user_data.dart';
import 'package:telkom_career/domain/model/request/register/register_request.dart';
import 'package:telkom_career/domain/repository/register/register_repository.dart';

class RegisterRepositoryImpl implements RegisterRepository{
  final registerRemoteService = RegisterRemoteService();

  @override
  Future<ResultEntitiy<UserRegisterData>> userRegister(RegisterRequest request) async {
    try {
      final response = await registerRemoteService.register(request);
      if (response.statusCode == 200 || response.statusCode == 201) {
        var a = RegisterRemoteResponse.fromJson(jsonDecode(response.body)).toUserRegisterData();
        return ResultSuccess<UserRegisterData>(a);
      } else {
        return ResultError(message: response.body);
      }
    } catch (e) {
      return ResultError(message: e.toString());
    }
  }
}