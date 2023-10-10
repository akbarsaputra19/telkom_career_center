// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListResponse _$ListResponseFromJson(Map<String, dynamic> json) => ListResponse(
      id: json['id'] as String?,
      companyId: json['companyId'] as String?,
      position: json['position'] as String?,
      company: json['company'] as String?,
      logo: json['logo'] as String?,
      urlLogo: json['urlLogo'] as String?,
      address: json['address'] as String?,
      status: json['status'] as bool?,
      createdAt: json['createdAt'] as String?,
      applicant: json['applicant'] as int?,
    );

Map<String, dynamic> _$ListResponseToJson(ListResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'companyId': instance.companyId,
      'position': instance.position,
      'company': instance.company,
      'logo': instance.logo,
      'urlLogo': instance.urlLogo,
      'address': instance.address,
      'status': instance.status,
      'createdAt': instance.createdAt,
      'applicant': instance.applicant,
    };
