// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

part 'update_education_request.g.dart';

@JsonSerializable()
class UpdateEducationRequest {
  String? level;
  String? name;
  String? major;
  String? stillEducation;
  String? startEducation;
  String? endEducation;
  String? description;
  UpdateEducationRequest({
    this.level,
    this.name,
    this.major,
    this.stillEducation,
    this.startEducation,
    this.endEducation,
    this.description,
  });

  factory UpdateEducationRequest.fromJson(Map<String, dynamic> json) =>
    _$UpdateEducationRequestFromJson(json);

  Map<String, dynamic> toJson() {
    return _$UpdateEducationRequestToJson(this);
  }
}
