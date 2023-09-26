// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_education_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateEducationRequest _$UpdateEducationRequestFromJson(
        Map<String, dynamic> json) =>
    UpdateEducationRequest(
      json['level'] as String,
      json['name'] as String,
      json['major'] as String,
      json['stillEducation'] as String,
      json['startEducation'] as String,
      json['endEducation'] as String,
      json['description'] as String,
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
