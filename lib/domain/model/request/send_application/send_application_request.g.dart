// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_application_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SendApplicationRequest _$SendApplicationRequestFromJson(
        Map<String, dynamic> json) =>
    SendApplicationRequest(
      json['companyId'] as String?,
      json['jobId'] as String?,
    );

Map<String, dynamic> _$SendApplicationRequestToJson(
        SendApplicationRequest instance) =>
    <String, dynamic>{
      'companyId': instance.companyId,
      'jobId': instance.jobId,
    };
