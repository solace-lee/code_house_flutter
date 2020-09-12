// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userinfoModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserinfoModel _$UserinfoModelFromJson(Map<String, dynamic> json) {
  return UserinfoModel()
    ..applyList = json['apply_list'] as List
    ..avatarUrl = json['avatar_url'] as String
    ..bindList = json['bind_list'] as List
    ..city = json['city'] as String
    ..country = json['country'] as String
    ..createDate = json['create_date'] as String
    ..gender = json['gender'] as int
    ..inviter = json['inviter'] as String
    ..isDel = json['is_del'] as bool
    ..nickName = json['nick_name'] as String
    ..openid = json['openid'] as String
    ..province = json['province'] as String
    ..role = json['role'] as int
    ..username = json['username'] as String
    ..v = json['__v'] as int
    ..id = json['_id'] as String;
}

Map<String, dynamic> _$UserinfoModelToJson(UserinfoModel instance) =>
    <String, dynamic>{
      'apply_list': instance.applyList,
      'avatar_url': instance.avatarUrl,
      'bind_list': instance.bindList,
      'city': instance.city,
      'country': instance.country,
      'create_date': instance.createDate,
      'gender': instance.gender,
      'inviter': instance.inviter,
      'is_del': instance.isDel,
      'nick_name': instance.nickName,
      'openid': instance.openid,
      'province': instance.province,
      'role': instance.role,
      'username': instance.username,
      '__v': instance.v,
      '_id': instance.id,
    };
