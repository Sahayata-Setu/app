// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      sId: json['sId'] as String?,
      userName: json['userName'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      points: json['points'] as int?,
      role: json['role'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'sId': instance.sId,
      'userName': instance.userName,
      'name': instance.name,
      'email': instance.email,
      'points': instance.points,
      'role': instance.role,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
