// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_product_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ListProductState _$ListProductStateFromJson(Map<String, dynamic> json) {
  return _ListProductState.fromJson(json);
}

/// @nodoc
mixin _$ListProductState {
  List<Product>? get listCategories => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListProductStateCopyWith<ListProductState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListProductStateCopyWith<$Res> {
  factory $ListProductStateCopyWith(
          ListProductState value, $Res Function(ListProductState) then) =
      _$ListProductStateCopyWithImpl<$Res, ListProductState>;
  @useResult
  $Res call({List<Product>? listCategories, bool isLoading});
}

/// @nodoc
class _$ListProductStateCopyWithImpl<$Res, $Val extends ListProductState>
    implements $ListProductStateCopyWith<$Res> {
  _$ListProductStateCopyWithImpl(this._value, this._then);

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
              as List<Product>?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ListProductStateImplCopyWith<$Res>
    implements $ListProductStateCopyWith<$Res> {
  factory _$$ListProductStateImplCopyWith(_$ListProductStateImpl value,
          $Res Function(_$ListProductStateImpl) then) =
      __$$ListProductStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Product>? listCategories, bool isLoading});
}

/// @nodoc
class __$$ListProductStateImplCopyWithImpl<$Res>
    extends _$ListProductStateCopyWithImpl<$Res, _$ListProductStateImpl>
    implements _$$ListProductStateImplCopyWith<$Res> {
  __$$ListProductStateImplCopyWithImpl(_$ListProductStateImpl _value,
      $Res Function(_$ListProductStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listCategories = freezed,
    Object? isLoading = null,
  }) {
    return _then(_$ListProductStateImpl(
      listCategories: freezed == listCategories
          ? _value._listCategories
          : listCategories // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ListProductStateImpl implements _ListProductState {
  const _$ListProductStateImpl(
      {final List<Product>? listCategories, this.isLoading = false})
      : _listCategories = listCategories;

  factory _$ListProductStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListProductStateImplFromJson(json);

  final List<Product>? _listCategories;
  @override
  List<Product>? get listCategories {
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
    return 'ListProductState(listCategories: $listCategories, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListProductStateImpl &&
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
  _$$ListProductStateImplCopyWith<_$ListProductStateImpl> get copyWith =>
      __$$ListProductStateImplCopyWithImpl<_$ListProductStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListProductStateImplToJson(
      this,
    );
  }
}

abstract class _ListProductState implements ListProductState {
  const factory _ListProductState(
      {final List<Product>? listCategories,
      final bool isLoading}) = _$ListProductStateImpl;

  factory _ListProductState.fromJson(Map<String, dynamic> json) =
      _$ListProductStateImpl.fromJson;

  @override
  List<Product>? get listCategories;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$ListProductStateImplCopyWith<_$ListProductStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
