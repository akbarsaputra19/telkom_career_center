// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
import 'package:telkom_career/domain/model/jobs_detail/jobs_detail_data.dart';

part 'jobs_detail_remote_response.g.dart';

@JsonSerializable()
class JobsDetailRemoteResponse implements JobsDetailRemoteResponseMapper {
  String? id;
  String? position;
  String? company;
  String? logo;
  String? address;
  bool? status;
  String? sendDate;
  String? qualification;
  String? jobDescription;
  String? category;
  String? description;
  String? createdAt;
  String? updatedAt;
  JobsDetailRemoteResponse({
    this.id,
    this.position,
    this.company,
    this.logo,
    this.address,
    this.status,
    this.sendDate,
    this.qualification,
    this.jobDescription,
    this.category,
    this.description,
    this.createdAt,
    this.updatedAt,
  });

  factory JobsDetailRemoteResponse.fromJson(Map<String, dynamic> json) =>
    _$JobsDetailRemoteResponseFromJson(json);

  Map<String, dynamic> toJson() => _$JobsDetailRemoteResponseToJson(this);

  @override
  JobsDetailData toJobsDetailData() {
    return JobsDetailData(
      id ?? "",
      position ?? "",
      company ?? "",
      logo ?? "",
      address ?? "",
      status!,
      sendDate ?? "",
      qualification ?? "",
      jobDescription ?? "",
      category ?? "",
      description ?? "",
      createdAt ?? "",
      updatedAt ?? ""
    );
  }
}

abstract class JobsDetailRemoteResponseMapper {
  JobsDetailData toJobsDetailData();
}