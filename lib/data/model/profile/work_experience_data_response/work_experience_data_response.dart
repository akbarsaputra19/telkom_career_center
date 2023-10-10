// ignore_for_file: public_member_api_docs, sort_constructors_first
//import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
import 'package:telkom_career/data/model/profile/data_range_remote_response/date_range_remote_response.dart';
import 'package:telkom_career/domain/model/data/profile/date_range_data.dart';
import 'package:telkom_career/domain/model/data/profile/work_experience_data.dart';

part 'work_experience_data_response.g.dart';

@JsonSerializable()
class WorkExperienceDataResponse implements WorkExperienceDataResponseMapper {
  String? Id;
  String? SkillExperience;
  String? Name;
  bool? StillWorking;
  DateRangeRemoteResponse? DateRange;
  String? Description;
  WorkExperienceDataResponse({
    this.Id,
    this.SkillExperience,
    this.Name,
    this.StillWorking,
    this.DateRange,
    this.Description,
  });


  factory WorkExperienceDataResponse.fromJson(Map<String, dynamic> json) =>
      _$WorkExperienceDataResponseFromJson(json);

  Map<String, dynamic> toJson() => _$WorkExperienceDataResponseToJson(this);

  @override
  WorkExperienceData toWorkExperienceData() {
    return WorkExperienceData(
      Id: Id,
      SkillExperience: SkillExperience,
      Name: Name,
      StillWorking: StillWorking,
      DateRange: DateRange?.toDateRangeData() ??
          DateRangeData(
            "",
            "",
          ),
      Description: Description
    );
  }
}

abstract class WorkExperienceDataResponseMapper {
  WorkExperienceData toWorkExperienceData();
}
