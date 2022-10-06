// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'donations.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Donations _$$_DonationsFromJson(Map<String, dynamic> json) => _$_Donations(
      id: json['_id'] as String?,
      donorId: json['donorId'] as String?,
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      description: json['description'] as String?,
      quantity: json['quantity'] as int?,
      city: json['city'] as String?,
      pickupDetails: json['pickupDetails'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      status: json['status'] as String?,
      donatedTo: (json['donatedTo'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$_DonationsToJson(_$_Donations instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'donorId': instance.donorId,
      'categories': instance.categories,
      'description': instance.description,
      'quantity': instance.quantity,
      'city': instance.city,
      'pickupDetails': instance.pickupDetails,
      'images': instance.images,
      'status': instance.status,
      'donatedTo': instance.donatedTo,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
