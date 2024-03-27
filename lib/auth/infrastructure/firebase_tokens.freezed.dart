// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firebase_tokens.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FirebaseTokens _$FirebaseTokensFromJson(Map<String, dynamic> json) {
  return _FirebaseTokens.fromJson(json);
}

/// @nodoc
mixin _$FirebaseTokens {
  String get f_auth_token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FirebaseTokensCopyWith<FirebaseTokens> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirebaseTokensCopyWith<$Res> {
  factory $FirebaseTokensCopyWith(
          FirebaseTokens value, $Res Function(FirebaseTokens) then) =
      _$FirebaseTokensCopyWithImpl<$Res, FirebaseTokens>;
  @useResult
  $Res call({String f_auth_token});
}

/// @nodoc
class _$FirebaseTokensCopyWithImpl<$Res, $Val extends FirebaseTokens>
    implements $FirebaseTokensCopyWith<$Res> {
  _$FirebaseTokensCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? f_auth_token = null,
  }) {
    return _then(_value.copyWith(
      f_auth_token: null == f_auth_token
          ? _value.f_auth_token
          : f_auth_token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FirebaseTokensImplCopyWith<$Res>
    implements $FirebaseTokensCopyWith<$Res> {
  factory _$$FirebaseTokensImplCopyWith(_$FirebaseTokensImpl value,
          $Res Function(_$FirebaseTokensImpl) then) =
      __$$FirebaseTokensImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String f_auth_token});
}

/// @nodoc
class __$$FirebaseTokensImplCopyWithImpl<$Res>
    extends _$FirebaseTokensCopyWithImpl<$Res, _$FirebaseTokensImpl>
    implements _$$FirebaseTokensImplCopyWith<$Res> {
  __$$FirebaseTokensImplCopyWithImpl(
      _$FirebaseTokensImpl _value, $Res Function(_$FirebaseTokensImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? f_auth_token = null,
  }) {
    return _then(_$FirebaseTokensImpl(
      f_auth_token: null == f_auth_token
          ? _value.f_auth_token
          : f_auth_token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FirebaseTokensImpl implements _FirebaseTokens {
  const _$FirebaseTokensImpl({required this.f_auth_token});

  factory _$FirebaseTokensImpl.fromJson(Map<String, dynamic> json) =>
      _$$FirebaseTokensImplFromJson(json);

  @override
  final String f_auth_token;

  @override
  String toString() {
    return 'FirebaseTokens(f_auth_token: $f_auth_token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirebaseTokensImpl &&
            (identical(other.f_auth_token, f_auth_token) ||
                other.f_auth_token == f_auth_token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, f_auth_token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FirebaseTokensImplCopyWith<_$FirebaseTokensImpl> get copyWith =>
      __$$FirebaseTokensImplCopyWithImpl<_$FirebaseTokensImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FirebaseTokensImplToJson(
      this,
    );
  }
}

abstract class _FirebaseTokens implements FirebaseTokens {
  const factory _FirebaseTokens({required final String f_auth_token}) =
      _$FirebaseTokensImpl;

  factory _FirebaseTokens.fromJson(Map<String, dynamic> json) =
      _$FirebaseTokensImpl.fromJson;

  @override
  String get f_auth_token;
  @override
  @JsonKey(ignore: true)
  _$$FirebaseTokensImplCopyWith<_$FirebaseTokensImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
