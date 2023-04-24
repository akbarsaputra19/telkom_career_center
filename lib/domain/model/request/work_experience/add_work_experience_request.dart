import 'package:json_annotation/json_annotation.dart';

part 'add_work_experience_request.g.dart';

@JsonSerializable()
class AddWorkExperienceRequest {
  String? skillExperience;
  String? name;
  String? stillWorking;
  String? startWork;
  String? endWork;
  String? description;
  AddWorkExperienceRequest({
    this.skillExperience,
    this.name,
    this.stillWorking,
    this.startWork,
    this.endWork,
    this.description
  });

  factory AddWorkExperienceRequest.fromJson(Map<String, dynamic> json) =>
    _$AddWorkExperienceRequestFromJson(json);

  Map<String, dynamic> toJson() {
    return _$AddWorkExperienceRequestToJson(this);
  }
}