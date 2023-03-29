import 'package:json_annotation/json_annotation.dart';
import 'package:telkom_career/base/status_response.dart';

part 'base_remote_response.g.dart';

@JsonSerializable(genericArgumentFactories: true, includeIfNull: true)
class BaseRemoteResponseCC<Data> {
  StatusResponse? status;
  Data? data;
  BaseRemoteResponseCC({
    this.status,
    this.data
  });

  factory BaseRemoteResponseCC.fromJson(Map<String, dynamic> json, Data Function(Object? json) fromJsonData) => 
      _$BaseRemoteResponseCCFromJson(json, fromJsonData);

  Map<String, dynamic> toJson(Object Function(Data value) toJsonData) => 
      _$BaseRemoteResponseCCToJson(this, toJsonData);
}