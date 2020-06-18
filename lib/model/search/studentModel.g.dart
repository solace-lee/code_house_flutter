// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'studentModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StudentModel _$StudentModelFromJson(Map<String, dynamic> json) {
  return StudentModel(
    keywords: (json['keywords'] as List)?.map((e) => e as String)?.toList(),
    detail: (json['detail'] as List)?.map((e) => e.toString())?.toList(),
    id: json['_id'] as String,
    studentname: json['studentname'] as String,
    studentid: json['studentid'] as String,
    createuser: json['createuser'] as String,
    mark: json['mark'] as String,
    meta: (json['meta'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, e as String),
    ),
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
      'meta': instance.meta,
    };
