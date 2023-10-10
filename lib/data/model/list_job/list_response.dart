// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
import 'package:telkom_career/domain/model/data/list_job/list_job_data.dart';

part 'list_response.g.dart';

abstract class ListResponseMapper {
  ListJobData toListJobData();
}

@JsonSerializable()
class ListResponse implements ListResponseMapper {
  String? id;
  String? companyId;
  String? position;
  String? company;
  String? logo;
  String? urlLogo;
  String? address;
  bool? status;
  String? createdAt;
  int? applicant;
  ListResponse({
    this.id,
    this.companyId,
    this.position,
    this.company,
    this.logo,
    this.urlLogo,
    this.address,
    this.status,
    this.createdAt,
    this.applicant,
  });

  factory ListResponse.fromJson(Map<String, dynamic> json) =>
      _$ListResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ListResponseToJson(this);

  @override
  ListJobData toListJobData() {
    return ListJobData(
      id ?? "",
      companyId ?? "",
      position ?? "",
      company ?? "",
      logo ?? "",
      urlLogo ?? "",
      address ?? "",
      status!,
      createdAt ?? "",
      applicant!
    );
  }
}
