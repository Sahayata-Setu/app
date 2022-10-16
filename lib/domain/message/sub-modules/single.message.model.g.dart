// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single.message.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SingleMessage _$$_SingleMessageFromJson(Map<String, dynamic> json) =>
    _$_SingleMessage(
      id: json['_id'] as String?,
      sender: json['sender'] == null
          ? null
          : User.fromJson(json['sender'] as Map<String, dynamic>),
      receiver: json['receiver'] == null
          ? null
          : User.fromJson(json['receiver'] as Map<String, dynamic>),
      message: json['message'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$_SingleMessageToJson(_$_SingleMessage instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'sender': instance.sender,
      'receiver': instance.receiver,
      'message': instance.message,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
