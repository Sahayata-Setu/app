// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'homepage.store.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MyParameter {
  String get type => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MyParameterCopyWith<MyParameter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyParameterCopyWith<$Res> {
  factory $MyParameterCopyWith(
          MyParameter value, $Res Function(MyParameter) then) =
      _$MyParameterCopyWithImpl<$Res, MyParameter>;
  @useResult
  $Res call({String type, String category});
}

/// @nodoc
class _$MyParameterCopyWithImpl<$Res, $Val extends MyParameter>
    implements $MyParameterCopyWith<$Res> {
  _$MyParameterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? category = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MyParameterCopyWith<$Res>
    implements $MyParameterCopyWith<$Res> {
  factory _$$_MyParameterCopyWith(
          _$_MyParameter value, $Res Function(_$_MyParameter) then) =
      __$$_MyParameterCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, String category});
}

/// @nodoc
class __$$_MyParameterCopyWithImpl<$Res>
    extends _$MyParameterCopyWithImpl<$Res, _$_MyParameter>
    implements _$$_MyParameterCopyWith<$Res> {
  __$$_MyParameterCopyWithImpl(
      _$_MyParameter _value, $Res Function(_$_MyParameter) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? category = null,
  }) {
    return _then(_$_MyParameter(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_MyParameter implements _MyParameter {
  _$_MyParameter({required this.type, required this.category});

  @override
  final String type;
  @override
  final String category;

  @override
  String toString() {
    return 'MyParameter(type: $type, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MyParameter &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MyParameterCopyWith<_$_MyParameter> get copyWith =>
      __$$_MyParameterCopyWithImpl<_$_MyParameter>(this, _$identity);
}

abstract class _MyParameter implements MyParameter {
  factory _MyParameter(
      {required final String type,
      required final String category}) = _$_MyParameter;

  @override
  String get type;
  @override
  String get category;
  @override
  @JsonKey(ignore: true)
  _$$_MyParameterCopyWith<_$_MyParameter> get copyWith =>
      throw _privateConstructorUsedError;
}
