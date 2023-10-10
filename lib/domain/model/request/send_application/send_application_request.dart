// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

part 'send_application_request.g.dart';

@JsonSerializable()
class SendApplicationRequest {
  String? companyId;
  String? jobId;
  SendApplicationRequest(
    this.companyId,
    this.jobId,
  );

  factory SendApplicationRequest.fromJson(Map<String, dynamic> json) =>
    _$SendApplicationRequestFromJson(json);

  Map<String, dynamic> toJson() {
    return _$SendApplicationRequestToJson(this);
  }
}
