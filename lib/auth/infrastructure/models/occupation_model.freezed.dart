// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'occupation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Occupation _$OccupationFromJson(Map<String, dynamic> json) {
  return _Occupation.fromJson(json);
}

/// @nodoc
mixin _$Occupation {
  String get label => throw _privateConstructorUsedError;
  bool get requiredLicense => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OccupationCopyWith<Occupation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OccupationCopyWith<$Res> {
  factory $OccupationCopyWith(
          Occupation value, $Res Function(Occupation) then) =
      _$OccupationCopyWithImpl<$Res, Occupation>;
  @useResult
  $Res call({String label, bool requiredLicense});
}

/// @nodoc
class _$OccupationCopyWithImpl<$Res, $Val extends Occupation>
    implements $OccupationCopyWith<$Res> {
  _$OccupationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? requiredLicense = null,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      requiredLicense: null == requiredLicense
          ? _value.requiredLicense
          : requiredLicense // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OccupationImplCopyWith<$Res>
    implements $OccupationCopyWith<$Res> {
  factory _$$OccupationImplCopyWith(
          _$OccupationImpl value, $Res Function(_$OccupationImpl) then) =
      __$$OccupationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label, bool requiredLicense});
}

/// @nodoc
class __$$OccupationImplCopyWithImpl<$Res>
    extends _$OccupationCopyWithImpl<$Res, _$OccupationImpl>
    implements _$$OccupationImplCopyWith<$Res> {
  __$$OccupationImplCopyWithImpl(
      _$OccupationImpl _value, $Res Function(_$OccupationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? requiredLicense = null,
  }) {
    return _then(_$OccupationImpl(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      requiredLicense: null == requiredLicense
          ? _value.requiredLicense
          : requiredLicense // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$OccupationImpl extends _Occupation {
  const _$OccupationImpl({required this.label, required this.requiredLicense})
      : super._();

  factory _$OccupationImpl.fromJson(Map<String, dynamic> json) =>
      _$$OccupationImplFromJson(json);

  @override
  final String label;
  @override
  final bool requiredLicense;

  @override
  String toString() {
    return 'Occupation(label: $label, requiredLicense: $requiredLicense)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OccupationImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.requiredLicense, requiredLicense) ||
                other.requiredLicense == requiredLicense));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, label, requiredLicense);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OccupationImplCopyWith<_$OccupationImpl> get copyWith =>
      __$$OccupationImplCopyWithImpl<_$OccupationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OccupationImplToJson(
      this,
    );
  }
}

abstract class _Occupation extends Occupation {
  const factory _Occupation(
      {required final String label,
      required final bool requiredLicense}) = _$OccupationImpl;
  const _Occupation._() : super._();

  factory _Occupation.fromJson(Map<String, dynamic> json) =
      _$OccupationImpl.fromJson;

  @override
  String get label;
  @override
  bool get requiredLicense;
  @override
  @JsonKey(ignore: true)
  _$$OccupationImplCopyWith<_$OccupationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
