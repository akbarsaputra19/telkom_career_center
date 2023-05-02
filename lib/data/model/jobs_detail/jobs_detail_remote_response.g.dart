// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jobs_detail_remote_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JobsDetailRemoteResponse _$JobsDetailRemoteResponseFromJson(
        Map<String, dynamic> json) =>
    JobsDetailRemoteResponse(
      id: json['id'] as String?,
      position: json['position'] as String?,
      company: json['company'] as String?,
      logo: json['logo'] as String?,
      address: json['address'] as String?,
      status: json['status'] as bool?,
      sendDate: json['sendDate'] as String?,
      qualification: json['qualification'] as String?,
      jobDescription: json['jobDescription'] as String?,
      category: json['category'] as String?,
      description: json['description'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$JobsDetailRemoteResponseToJson(
        JobsDetailRemoteResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'position': instance.position,
      'company': instance.company,
      'logo': instance.logo,
      'address': instance.address,
      'status': instance.status,
      'sendDate': instance.sendDate,
      'qualification': instance.qualification,
      'jobDescription': instance.jobDescription,
      'category': instance.category,
      'description': instance.description,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
