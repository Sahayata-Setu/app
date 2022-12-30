// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'single.message.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SingleMessage _$SingleMessageFromJson(Map<String, dynamic> json) {
  return _SingleMessage.fromJson(json);
}

/// @nodoc
mixin _$SingleMessage {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  User? get sender => throw _privateConstructorUsedError;
  User? get receiver => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SingleMessageCopyWith<SingleMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleMessageCopyWith<$Res> {
  factory $SingleMessageCopyWith(
          SingleMessage value, $Res Function(SingleMessage) then) =
      _$SingleMessageCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "_id") String? id,
      User? sender,
      User? receiver,
      String? message,
      String? createdAt,
      String? updatedAt});

  $UserCopyWith<$Res>? get sender;
  $UserCopyWith<$Res>? get receiver;
}

/// @nodoc
class _$SingleMessageCopyWithImpl<$Res>
    implements $SingleMessageCopyWith<$Res> {
  _$SingleMessageCopyWithImpl(this._value, this._then);

  final SingleMessage _value;
  // ignore: unused_field
  final $Res Function(SingleMessage) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? sender = freezed,
    Object? receiver = freezed,
    Object? message = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as User?,
      receiver: receiver == freezed
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as User?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $UserCopyWith<$Res>? get sender {
    if (_value.sender == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.sender!, (value) {
      return _then(_value.copyWith(sender: value));
    });
  }

  @override
  $UserCopyWith<$Res>? get receiver {
    if (_value.receiver == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.receiver!, (value) {
      return _then(_value.copyWith(receiver: value));
    });
  }
}

/// @nodoc
abstract class _$$_SingleMessageCopyWith<$Res>
    implements $SingleMessageCopyWith<$Res> {
  factory _$$_SingleMessageCopyWith(
          _$_SingleMessage value, $Res Function(_$_SingleMessage) then) =
      __$$_SingleMessageCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "_id") String? id,
      User? sender,
      User? receiver,
      String? message,
      String? createdAt,
      String? updatedAt});

  @override
  $UserCopyWith<$Res>? get sender;
  @override
  $UserCopyWith<$Res>? get receiver;
}

/// @nodoc
class __$$_SingleMessageCopyWithImpl<$Res>
    extends _$SingleMessageCopyWithImpl<$Res>
    implements _$$_SingleMessageCopyWith<$Res> {
  __$$_SingleMessageCopyWithImpl(
      _$_SingleMessage _value, $Res Function(_$_SingleMessage) _then)
      : super(_value, (v) => _then(v as _$_SingleMessage));

  @override
  _$_SingleMessage get _value => super._value as _$_SingleMessage;

  @override
  $Res call({
    Object? id = freezed,
    Object? sender = freezed,
    Object? receiver = freezed,
    Object? message = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_SingleMessage(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as User?,
      receiver: receiver == freezed
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as User?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SingleMessage implements _SingleMessage {
  const _$_SingleMessage(
      {@JsonKey(name: "_id") this.id,
      this.sender,
      this.receiver,
      this.message,
      this.createdAt,
      this.updatedAt});

  factory _$_SingleMessage.fromJson(Map<String, dynamic> json) =>
      _$$_SingleMessageFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  final User? sender;
  @override
  final User? receiver;
  @override
  final String? message;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'SingleMessage(id: $id, sender: $sender, receiver: $receiver, message: $message, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SingleMessage &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.sender, sender) &&
            const DeepCollectionEquality().equals(other.receiver, receiver) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(sender),
      const DeepCollectionEquality().hash(receiver),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$$_SingleMessageCopyWith<_$_SingleMessage> get copyWith =>
      __$$_SingleMessageCopyWithImpl<_$_SingleMessage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SingleMessageToJson(
      this,
    );
  }
}

abstract class _SingleMessage implements SingleMessage {
  const factory _SingleMessage(
      {@JsonKey(name: "_id") final String? id,
      final User? sender,
      final User? receiver,
      final String? message,
      final String? createdAt,
      final String? updatedAt}) = _$_SingleMessage;

  factory _SingleMessage.fromJson(Map<String, dynamic> json) =
      _$_SingleMessage.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  User? get sender;
  @override
  User? get receiver;
  @override
  String? get message;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_SingleMessageCopyWith<_$_SingleMessage> get copyWith =>
      throw _privateConstructorUsedError;
}