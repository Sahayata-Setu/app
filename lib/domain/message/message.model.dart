// This file is "main.dart"
import 'package:donationapp/domain/user/user.model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'message.model.freezed.dart';

part 'message.model.g.dart';

@freezed
class Messages with _$Messages {
  const factory Messages({
    @JsonKey(name: "_id") String? id,
    User? sender,
    User? receiver,
    String? message,
    String? createdAt,
    String? updatedAt,
    // int? iV;
  }) = _Messages;

  factory Messages.fromJson(Map<String, dynamic> json) =>
      _$MessagesFromJson(json);
}
