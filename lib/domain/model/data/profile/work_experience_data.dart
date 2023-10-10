// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:telkom_career/domain/model/data/profile/date_range_data.dart';

class WorkExperienceData {
  String? Id;
  String? SkillExperience;
  String? Name;
  bool? StillWorking;
  DateRangeData? DateRange;
  String? Description;
  WorkExperienceData({
    this.Id,
    this.SkillExperience,
    this.Name,
    this.StillWorking,
    this.DateRange,
    this.Description,
  });
}
