// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'donations.model.freezed.dart';

part 'donations.model.g.dart';

@freezed
class Donations with _$Donations {
  const factory Donations({
    @JsonKey(name: "_id") String? id,
    String? donorId,
    List<String>? categories,
    String? description,
    int? quantity,
    String? city,
    String? pickupDetails,
    List<String>? images,
    String? status,
    List<String>? donatedTo,
    String? createdAt,
    String? updatedAt,
    // int? iV;
  }) = _Donations;

  factory Donations.fromJson(Map<String, dynamic> json) =>
      _$DonationsFromJson(json);
}
