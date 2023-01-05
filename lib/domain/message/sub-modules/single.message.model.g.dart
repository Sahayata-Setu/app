// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single.message.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SingleMessage _$$_SingleMessageFromJson(Map<String, dynamic> json) =>
    _$_SingleMessage(
      id: json['id'] as String?,
      sender: json['sender'] as String?,
      reciever: json['reciever'] as String?,
      message: json['message'] as String?,
      createdAt: json['createdAt'] as String?,
    );

Map<String, dynamic> _$$_SingleMessageToJson(_$_SingleMessage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sender': instance.sender,
      'reciever': instance.reciever,
      'message': instance.message,
      'createdAt': instance.createdAt,
    };
