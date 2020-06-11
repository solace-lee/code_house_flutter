// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'searchModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchModel _$SearchModelFromJson(Map<String, dynamic> json) {
  return SearchModel(
    studentList: (json['data'] as List)
        ?.map((e) =>
            e == null ? null : StudentModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SearchModelToJson(SearchModel instance) =>
    <String, dynamic>{
      'data': instance.studentList,
    };
