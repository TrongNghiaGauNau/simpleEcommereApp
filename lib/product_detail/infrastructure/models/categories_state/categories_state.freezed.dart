// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'categories_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CategoriesState _$CategoriesStateFromJson(Map<String, dynamic> json) {
  return _CategoriesState.fromJson(json);
}

/// @nodoc
mixin _$CategoriesState {
  List<String>? get listCategories => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoriesStateCopyWith<CategoriesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesStateCopyWith<$Res> {
  factory $CategoriesStateCopyWith(
          CategoriesState value, $Res Function(CategoriesState) then) =
      _$CategoriesStateCopyWithImpl<$Res, CategoriesState>;
  @useResult
  $Res call({List<String>? listCategories, bool isLoading});
}

/// @nodoc
class _$CategoriesStateCopyWithImpl<$Res, $Val extends CategoriesState>
    implements $CategoriesStateCopyWith<$Res> {
  _$CategoriesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listCategories = freezed,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      listCategories: freezed == listCategories
          ? _value.listCategories
          : listCategories // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoriesStateImplCopyWith<$Res>
    implements $CategoriesStateCopyWith<$Res> {
  factory _$$CategoriesStateImplCopyWith(_$CategoriesStateImpl value,
          $Res Function(_$CategoriesStateImpl) then) =
      __$$CategoriesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String>? listCategories, bool isLoading});
}

/// @nodoc
class __$$CategoriesStateImplCopyWithImpl<$Res>
    extends _$CategoriesStateCopyWithImpl<$Res, _$CategoriesStateImpl>
    implements _$$CategoriesStateImplCopyWith<$Res> {
  __$$CategoriesStateImplCopyWithImpl(
      _$CategoriesStateImpl _value, $Res Function(_$CategoriesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listCategories = freezed,
    Object? isLoading = null,
  }) {
    return _then(_$CategoriesStateImpl(
      listCategories: freezed == listCategories
          ? _value._listCategories
          : listCategories // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoriesStateImpl implements _CategoriesState {
  const _$CategoriesStateImpl(
      {final List<String>? listCategories, this.isLoading = false})
      : _listCategories = listCategories;

  factory _$CategoriesStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoriesStateImplFromJson(json);

  final List<String>? _listCategories;
  @override
  List<String>? get listCategories {
    final value = _listCategories;
    if (value == null) return null;
    if (_listCategories is EqualUnmodifiableListView) return _listCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'CategoriesState(listCategories: $listCategories, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesStateImpl &&
            const DeepCollectionEquality()
                .equals(other._listCategories, _listCategories) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_listCategories), isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoriesStateImplCopyWith<_$CategoriesStateImpl> get copyWith =>
      __$$CategoriesStateImplCopyWithImpl<_$CategoriesStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoriesStateImplToJson(
      this,
    );
  }
}

abstract class _CategoriesState implements CategoriesState {
  const factory _CategoriesState(
      {final List<String>? listCategories,
      final bool isLoading}) = _$CategoriesStateImpl;

  factory _CategoriesState.fromJson(Map<String, dynamic> json) =
      _$CategoriesStateImpl.fromJson;

  @override
  List<String>? get listCategories;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$CategoriesStateImplCopyWith<_$CategoriesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
