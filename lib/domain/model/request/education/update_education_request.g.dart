// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_education_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateEducationRequest _$UpdateEducationRequestFromJson(
        Map<String, dynamic> json) =>
    UpdateEducationRequest(
      level: json['level'] as String?,
      name: json['name'] as String?,
      major: json['major'] as String?,
      stillEducation: json['stillEducation'] as String?,
      startEducation: json['startEducation'] as String?,
      endEducation: json['endEducation'] as String?,
      description: json['description'] as String?,
    )..accesToken = json['accesToken'] as String;

Map<String, dynamic> _$UpdateEducationRequestToJson(
        UpdateEducationRequest instance) =>
    <String, dynamic>{
      'accesToken': instance.accesToken,
      'level': instance.level,
      'name': instance.name,
      'major': instance.major,
      'stillEducation': instance.stillEducation,
      'startEducation': instance.startEducation,
      'endEducation': instance.endEducation,
      'description': instance.description,
    };
