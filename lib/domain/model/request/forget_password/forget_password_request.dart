// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

part 'forget_password_request.g.dart';

@JsonSerializable()
class ForgetPasswordRequest {
  String email;
  ForgetPasswordRequest(
    this.email,
  );

  factory ForgetPasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$ForgetPasswordRequestFromJson(json);

  Map<String, dynamic> toJson() {
    return _$ForgetPasswordRequestToJson(this);
  }
}
