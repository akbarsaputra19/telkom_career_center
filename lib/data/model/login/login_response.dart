// import 'package:json_annotation/json_annotation.dart';
// import 'package:telkom_career/domain/model/login/login_user_data.dart';

// abstract class LoginSourceResponseMapper{
//   LoginUserData toLoginData();
// }

// @JsonSerializable()
// class LoginRemoteResponse implements LoginSourceResponseMapper{
//   String? token;
//   LoginRemoteResponse(
//     this.token
//   );

//   factory LoginRemoteResponse.fromJson(Map<String, dynamic> json) => _$LoginRemoteResponseFromJson(json);

//   Map<String, dynamic> toJson() => _$LoginCollectionRemoteResponseToJson(this);

//   @override
//   LoginUserData toLoginData() {
//     return LoginUserData(token ?? "");
//   }
// }