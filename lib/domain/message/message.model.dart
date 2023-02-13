// This file is "main.dart"
import 'package:donationapp/domain/user/user.model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'message.model.freezed.dart';

part 'message.model.g.dart';

@freezed
class Messages with _$Messages {
  const factory Messages({
    @JsonKey(name: "_id") String? id,
    String? firstName,
    String? lastName,
    String? role,
    String? email,
    // String? phoneNo,
    String? address,
    String? gender,
    String? createdAt,
    String? updatedAt,
    // int? iV,
    String? message,
    // int? iV;
  }) = _Messages;

  factory Messages.fromJson(Map<String, dynamic> json) =>
      _$MessagesFromJson(json);
}
