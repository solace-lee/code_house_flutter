import 'package:json_annotation/json_annotation.dart';


part 'userinfoModel.g.dart';

@JsonSerializable()
class UserinfoModel {
      UserinfoModel();

  @JsonKey(name: 'apply_list') List<dynamic> applyList;
  @JsonKey(name: 'avatar_url') String avatarUrl;
  @JsonKey(name: 'bind_list') List<dynamic> bindList;
  String city;
  String country;
  @JsonKey(name: 'create_date') String createDate;
  int gender;
  String inviter;
  @JsonKey(name: 'is_del') bool isDel;
  @JsonKey(name: 'nick_name') String nickName;
  String openid;
  String province;
  int role;
  String username;
  @JsonKey(name: '__v') int v;
  @JsonKey(name: '_id') String id;

  factory UserinfoModel.fromJson(Map<String,dynamic> json) => _$UserinfoModelFromJson(json);
  Map<String, dynamic> toJson() => _$UserinfoModelToJson(this);
}
