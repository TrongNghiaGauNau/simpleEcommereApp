// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_request_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SignUpRequestDetailResponse _$SignUpRequestDetailResponseFromJson(
    Map<String, dynamic> json) {
  return _SignUpRequestDetailResponse.fromJson(json);
}

/// @nodoc
mixin _$SignUpRequestDetailResponse {
  String get code => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  bool get isExpired => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignUpRequestDetailResponseCopyWith<SignUpRequestDetailResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpRequestDetailResponseCopyWith<$Res> {
  factory $SignUpRequestDetailResponseCopyWith(
          SignUpRequestDetailResponse value,
          $Res Function(SignUpRequestDetailResponse) then) =
      _$SignUpRequestDetailResponseCopyWithImpl<$Res,
          SignUpRequestDetailResponse>;
  @useResult
  $Res call({String code, String email, bool isExpired});
}

/// @nodoc
class _$SignUpRequestDetailResponseCopyWithImpl<$Res,
        $Val extends SignUpRequestDetailResponse>
    implements $SignUpRequestDetailResponseCopyWith<$Res> {
  _$SignUpRequestDetailResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? email = null,
    Object? isExpired = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      isExpired: null == isExpired
          ? _value.isExpired
          : isExpired // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignUpRequestDetailResponseImplCopyWith<$Res>
    implements $SignUpRequestDetailResponseCopyWith<$Res> {
  factory _$$SignUpRequestDetailResponseImplCopyWith(
          _$SignUpRequestDetailResponseImpl value,
          $Res Function(_$SignUpRequestDetailResponseImpl) then) =
      __$$SignUpRequestDetailResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String email, bool isExpired});
}

/// @nodoc
class __$$SignUpRequestDetailResponseImplCopyWithImpl<$Res>
    extends _$SignUpRequestDetailResponseCopyWithImpl<$Res,
        _$SignUpRequestDetailResponseImpl>
    implements _$$SignUpRequestDetailResponseImplCopyWith<$Res> {
  __$$SignUpRequestDetailResponseImplCopyWithImpl(
      _$SignUpRequestDetailResponseImpl _value,
      $Res Function(_$SignUpRequestDetailResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? email = null,
    Object? isExpired = null,
  }) {
    return _then(_$SignUpRequestDetailResponseImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      isExpired: null == isExpired
          ? _value.isExpired
          : isExpired // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$SignUpRequestDetailResponseImpl extends _SignUpRequestDetailResponse {
  const _$SignUpRequestDetailResponseImpl(
      {required this.code, required this.email, required this.isExpired})
      : super._();

  factory _$SignUpRequestDetailResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SignUpRequestDetailResponseImplFromJson(json);

  @override
  final String code;
  @override
  final String email;
  @override
  final bool isExpired;

  @override
  String toString() {
    return 'SignUpRequestDetailResponse(code: $code, email: $email, isExpired: $isExpired)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpRequestDetailResponseImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.isExpired, isExpired) ||
                other.isExpired == isExpired));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, email, isExpired);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpRequestDetailResponseImplCopyWith<_$SignUpRequestDetailResponseImpl>
      get copyWith => __$$SignUpRequestDetailResponseImplCopyWithImpl<
          _$SignUpRequestDetailResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignUpRequestDetailResponseImplToJson(
      this,
    );
  }
}

abstract class _SignUpRequestDetailResponse
    extends SignUpRequestDetailResponse {
  const factory _SignUpRequestDetailResponse(
      {required final String code,
      required final String email,
      required final bool isExpired}) = _$SignUpRequestDetailResponseImpl;
  const _SignUpRequestDetailResponse._() : super._();

  factory _SignUpRequestDetailResponse.fromJson(Map<String, dynamic> json) =
      _$SignUpRequestDetailResponseImpl.fromJson;

  @override
  String get code;
  @override
  String get email;
  @override
  bool get isExpired;
  @override
  @JsonKey(ignore: true)
  _$$SignUpRequestDetailResponseImplCopyWith<_$SignUpRequestDetailResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
