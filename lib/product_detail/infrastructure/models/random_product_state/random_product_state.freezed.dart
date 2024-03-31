// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'random_product_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RandomProductState _$RandomProductStateFromJson(Map<String, dynamic> json) {
  return _RandomProductState.fromJson(json);
}

/// @nodoc
mixin _$RandomProductState {
  Product? get product => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RandomProductStateCopyWith<RandomProductState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RandomProductStateCopyWith<$Res> {
  factory $RandomProductStateCopyWith(
          RandomProductState value, $Res Function(RandomProductState) then) =
      _$RandomProductStateCopyWithImpl<$Res, RandomProductState>;
  @useResult
  $Res call({Product? product, bool isLoading});

  $ProductCopyWith<$Res>? get product;
}

/// @nodoc
class _$RandomProductStateCopyWithImpl<$Res, $Val extends RandomProductState>
    implements $RandomProductStateCopyWith<$Res> {
  _$RandomProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = freezed,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $ProductCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RandomProductStateImplCopyWith<$Res>
    implements $RandomProductStateCopyWith<$Res> {
  factory _$$RandomProductStateImplCopyWith(_$RandomProductStateImpl value,
          $Res Function(_$RandomProductStateImpl) then) =
      __$$RandomProductStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Product? product, bool isLoading});

  @override
  $ProductCopyWith<$Res>? get product;
}

/// @nodoc
class __$$RandomProductStateImplCopyWithImpl<$Res>
    extends _$RandomProductStateCopyWithImpl<$Res, _$RandomProductStateImpl>
    implements _$$RandomProductStateImplCopyWith<$Res> {
  __$$RandomProductStateImplCopyWithImpl(_$RandomProductStateImpl _value,
      $Res Function(_$RandomProductStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = freezed,
    Object? isLoading = null,
  }) {
    return _then(_$RandomProductStateImpl(
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RandomProductStateImpl implements _RandomProductState {
  const _$RandomProductStateImpl({this.product, this.isLoading = false});

  factory _$RandomProductStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$RandomProductStateImplFromJson(json);

  @override
  final Product? product;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'RandomProductState(product: $product, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RandomProductStateImpl &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, product, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RandomProductStateImplCopyWith<_$RandomProductStateImpl> get copyWith =>
      __$$RandomProductStateImplCopyWithImpl<_$RandomProductStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RandomProductStateImplToJson(
      this,
    );
  }
}

abstract class _RandomProductState implements RandomProductState {
  const factory _RandomProductState(
      {final Product? product,
      final bool isLoading}) = _$RandomProductStateImpl;

  factory _RandomProductState.fromJson(Map<String, dynamic> json) =
      _$RandomProductStateImpl.fromJson;

  @override
  Product? get product;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$RandomProductStateImplCopyWith<_$RandomProductStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
