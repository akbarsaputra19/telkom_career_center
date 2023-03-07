// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:json_annotation/json_annotation.dart';
// import 'package:telkom_career/domain/model/login/login_status.dart';
// import 'package:telkom_career/domain/model/login/login_user_data.dart';

// part 'login_remote_response.g.dart';

// abstract class LoginRemoteResponseMapper{
//   LoginUserData toLoginUserData();
// }

// @JsonSerializable()
// class LoginRemoteResponse implements LoginRemoteResponseMapper {
//   int? code;
//   String? message;
//   LoginRemoteResponse({
//     this.code,
//     this.message
//   });

//   factory LoginRemoteResponse.fromJson(Map<String, dynamic> json) => _$LoginRemoteResponseFromJson(json);

//   Map<String, dynamic> toJson() => _$LoginRemoteResponseToJson(this);

//   @override
//   LoginStatus toLoginStatus() {
//     return LoginStatus(code!, message?? "");
//   }
// }