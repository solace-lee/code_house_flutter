import 'package:codehouseflutter/model/search/studentModel.dart';
import 'package:json_annotation/json_annotation.dart';

part 'searchModel.g.dart';

@JsonSerializable()
class SearchModel {
  @JsonKey(name: 'data')
  final List<StudentModel> studentList;

  SearchModel ({this.studentList});

  factory SearchModel.fromJson(Map<String, dynamic> res) => _$SearchModelFromJson(res);
  Map<String, dynamic> toJson() => _$SearchModelToJson(this);
}