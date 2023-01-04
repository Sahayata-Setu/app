// This file is "main.dart"
import 'package:donationapp/domain/user/user.model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'single.message.model.freezed.dart';

part 'single.message.model.g.dart';

@freezed
class SingleMessage with _$SingleMessage {
  const factory SingleMessage({
    String? id,
    String? sender,
    String? receiver,
    String? message,
    String? createdAt,
    // String? updatedAt,
    // int? iV;
  }) = _SingleMessage;

  factory SingleMessage.fromJson(Map<String, dynamic> json) =>
      _$SingleMessageFromJson(json);
}
