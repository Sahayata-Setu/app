// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'user.model.freezed.dart';

part 'user.model.g.dart';

@freezed
class User with _$User {
  const factory User({
    String? sId,
    String? userName,
    String? name,
    String? email,
    // List<Null>? posts,
    int? points,
    String? role,
    String? createdAt,
    String? updatedAt,
    // int? iV;
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
