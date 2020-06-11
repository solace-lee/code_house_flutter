import 'package:json_annotation/json_annotation.dart';

part 'studentModel.g.dart';

@JsonSerializable()

class StudentModel {
  final List<dynamic> keywords;
  final List<dynamic> detail;
  @JsonKey(name: '_id')
  final String id;
  final String studentname;
  final String studentid;
  final String createuser;
  final String mark;

  StudentModel({this.keywords, this.detail, this.id, this.studentname, this.studentid, this.createuser, this.mark});
  factory StudentModel.fromJson(Map<String, dynamic> json) => _$StudentModelFromJson(json);
  Map<String, dynamic> toJson() => _$StudentModelToJson(this);
}