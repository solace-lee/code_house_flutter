import 'package:json_annotation/json_annotation.dart';

part 'studentModel.g.dart';

@JsonSerializable()

class StudentModel {
  final List<String> keywords;
  final List<String> detail;
  @JsonKey(name: '_id')
  final String id;
  final String studentname;
  final String studentid;
  final String createuser;
  final String mark;
  final Map<String, String> meta;

  StudentModel({this.keywords, this.detail, this.id, this.studentname, this.studentid, this.createuser, this.mark, this.meta});
  factory StudentModel.fromJson(Map<String, dynamic> json) => _$StudentModelFromJson(json);
  Map<String, dynamic> toJson() => _$StudentModelToJson(this);
}