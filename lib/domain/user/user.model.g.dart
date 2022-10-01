// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      email: json['email'] as String?,
      address: json['address'] as String?,
      password: json['password'] as String?,
      phoneNo: json['phoneNo'] as int?,
      gender: json['gender'] as String?,
      language: json['language'] as String?,
      profilePic: json['profilePic'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'address': instance.address,
      'password': instance.password,
      'phoneNo': instance.phoneNo,
      'gender': instance.gender,
      'language': instance.language,
      'profilePic': instance.profilePic,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
