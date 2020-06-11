// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'studentModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StudentModel _$StudentModelFromJson(Map<String, dynamic> json) {
  return StudentModel(
    keywords: json['keywords'] as List,
    detail: json['detail'] as List,
    id: json['_id'] as String,
    studentname: json['studentname'] as String,
    studentid: json['studentid'] as String,
    createuser: json['createuser'] as String,
    mark: json['mark'] as String,
  );
}

Map<String, dynamic> _$StudentModelToJson(StudentModel instance) =>
    <String, dynamic>{
      'keywords': instance.keywords,
      'detail': instance.detail,
      '_id': instance.id,
      'studentname': instance.studentname,
      'studentid': instance.studentid,
      'createuser': instance.createuser,
      'mark': instance.mark,
    };
