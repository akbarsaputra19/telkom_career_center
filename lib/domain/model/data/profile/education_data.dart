// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:telkom_career/domain/model/data/profile/date_range_data.dart';

class EducationData {
  String? Id;
  String? Level;
  String? Name;
  String? Major;
  bool? SkillEducation;
  DateRangeData? DateRange;
  String? Description;
  EducationData({
    this.Id,
    this.Level,
    this.Name,
    this.Major,
    this.SkillEducation,
    this.DateRange,
    this.Description,
  });
}
