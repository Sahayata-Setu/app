import 'package:freezed_annotation/freezed_annotation.dart';
part 'user.model.freezed.dart';

part 'user.model.g.dart';

@freezed
class User with _$User {
  const User._();
  factory User({
    required String firstName,
    required String email,
    required String token,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> map) => _$UserFromJson(map);
}
