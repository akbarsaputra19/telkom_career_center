// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
import 'package:telkom_career/domain/model/data/jobs_detail/jobs_detail_data.dart';

part 'jobs_detail_remote_response.g.dart';

@JsonSerializable()
class JobsDetailRemoteResponse implements JobsDetailRemoteResponseMapper {
  String? id;
  String? companyId;
  String? position;
  String? company;
  String? logo;
  String? urlLogo;
  String? address;
  bool? status;
  String? applyDate;
  String? qualification;
  String? jobDescription;
  String? createdAt;
  String? updatedAt;
  int? applicant;
  JobsDetailRemoteResponse({
    this.id,
    this.companyId,
    this.position,
    this.company,
    this.logo,
    this.urlLogo,
    this.address,
    this.status,
    this.applyDate,
    this.qualification,
    this.jobDescription,
    this.createdAt,
    this.updatedAt,
    this.applicant,
  });

  factory JobsDetailRemoteResponse.fromJson(Map<String, dynamic> json) =>
    _$JobsDetailRemoteResponseFromJson(json);

  Map<String, dynamic> toJson() => _$JobsDetailRemoteResponseToJson(this);

  @override
  JobsDetailData toJobsDetailData() {
    return JobsDetailData(
      id ?? "",
      companyId ?? "",
      position ?? "",
      company ?? "",
      logo ?? "",
      urlLogo ?? "",
      address ?? "",
      status!,
      applyDate ?? "",
      qualification ?? "",
      jobDescription ?? "",
      createdAt ?? "",
      updatedAt ?? "",
      applicant!
    );
  }
}

abstract class JobsDetailRemoteResponseMapper {
  JobsDetailData toJobsDetailData();
}