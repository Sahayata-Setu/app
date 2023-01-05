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
  String? get id => throw _privateConstructorUsedError;
  String? get sender => throw _privateConstructorUsedError;
  String? get reciever => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;

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
      {String? id,
      String? sender,
      String? reciever,
      String? message,
      String? createdAt});
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
    Object? reciever = freezed,
    Object? message = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as String?,
      reciever: reciever == freezed
          ? _value.reciever
          : reciever // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
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
      {String? id,
      String? sender,
      String? reciever,
      String? message,
      String? createdAt});
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
    Object? reciever = freezed,
    Object? message = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$_SingleMessage(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as String?,
      reciever: reciever == freezed
          ? _value.reciever
          : reciever // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SingleMessage implements _SingleMessage {
  const _$_SingleMessage(
      {this.id, this.sender, this.reciever, this.message, this.createdAt});

  factory _$_SingleMessage.fromJson(Map<String, dynamic> json) =>
      _$$_SingleMessageFromJson(json);

  @override
  final String? id;
  @override
  final String? sender;
  @override
  final String? reciever;
  @override
  final String? message;
  @override
  final String? createdAt;

  @override
  String toString() {
    return 'SingleMessage(id: $id, sender: $sender, reciever: $reciever, message: $message, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SingleMessage &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.sender, sender) &&
            const DeepCollectionEquality().equals(other.reciever, reciever) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(sender),
      const DeepCollectionEquality().hash(reciever),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(createdAt));

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
      {final String? id,
      final String? sender,
      final String? reciever,
      final String? message,
      final String? createdAt}) = _$_SingleMessage;

  factory _SingleMessage.fromJson(Map<String, dynamic> json) =
      _$_SingleMessage.fromJson;

  @override
  String? get id;
  @override
  String? get sender;
  @override
  String? get reciever;
  @override
  String? get message;
  @override
  String? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_SingleMessageCopyWith<_$_SingleMessage> get copyWith =>
      throw _privateConstructorUsedError;
}
