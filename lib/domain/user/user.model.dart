// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'user.model.freezed.dart';

part 'user.model.g.dart';

@freezed
class User with _$User {
  const factory User({
    @JsonKey(name: "_id") String? id,
    String? firstName,
    String? lastName,
    String? email,
    String? address,
    String? password,
    // List<Null>? posts,
    String? phoneNo,
    String? gender,
    String? language,
    String? profilePic,
    String? createdAt,
    String? updatedAt,
    // int? iV;
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
