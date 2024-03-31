// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaymentState _$PaymentStateFromJson(Map<String, dynamic> json) {
  return _PaymentState.fromJson(json);
}

/// @nodoc
mixin _$PaymentState {
  List<CartProduct> get listProduct => throw _privateConstructorUsedError;
  double get totalPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentStateCopyWith<PaymentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentStateCopyWith<$Res> {
  factory $PaymentStateCopyWith(
          PaymentState value, $Res Function(PaymentState) then) =
      _$PaymentStateCopyWithImpl<$Res, PaymentState>;
  @useResult
  $Res call({List<CartProduct> listProduct, double totalPrice});
}

/// @nodoc
class _$PaymentStateCopyWithImpl<$Res, $Val extends PaymentState>
    implements $PaymentStateCopyWith<$Res> {
  _$PaymentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listProduct = null,
    Object? totalPrice = null,
  }) {
    return _then(_value.copyWith(
      listProduct: null == listProduct
          ? _value.listProduct
          : listProduct // ignore: cast_nullable_to_non_nullable
              as List<CartProduct>,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentStateImplCopyWith<$Res>
    implements $PaymentStateCopyWith<$Res> {
  factory _$$PaymentStateImplCopyWith(
          _$PaymentStateImpl value, $Res Function(_$PaymentStateImpl) then) =
      __$$PaymentStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CartProduct> listProduct, double totalPrice});
}

/// @nodoc
class __$$PaymentStateImplCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$PaymentStateImpl>
    implements _$$PaymentStateImplCopyWith<$Res> {
  __$$PaymentStateImplCopyWithImpl(
      _$PaymentStateImpl _value, $Res Function(_$PaymentStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listProduct = null,
    Object? totalPrice = null,
  }) {
    return _then(_$PaymentStateImpl(
      listProduct: null == listProduct
          ? _value._listProduct
          : listProduct // ignore: cast_nullable_to_non_nullable
              as List<CartProduct>,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentStateImpl implements _PaymentState {
  const _$PaymentStateImpl(
      {final List<CartProduct> listProduct = const [], this.totalPrice = 0.0})
      : _listProduct = listProduct;

  factory _$PaymentStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentStateImplFromJson(json);

  final List<CartProduct> _listProduct;
  @override
  @JsonKey()
  List<CartProduct> get listProduct {
    if (_listProduct is EqualUnmodifiableListView) return _listProduct;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listProduct);
  }

  @override
  @JsonKey()
  final double totalPrice;

  @override
  String toString() {
    return 'PaymentState(listProduct: $listProduct, totalPrice: $totalPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentStateImpl &&
            const DeepCollectionEquality()
                .equals(other._listProduct, _listProduct) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_listProduct), totalPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentStateImplCopyWith<_$PaymentStateImpl> get copyWith =>
      __$$PaymentStateImplCopyWithImpl<_$PaymentStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentStateImplToJson(
      this,
    );
  }
}

abstract class _PaymentState implements PaymentState {
  const factory _PaymentState(
      {final List<CartProduct> listProduct,
      final double totalPrice}) = _$PaymentStateImpl;

  factory _PaymentState.fromJson(Map<String, dynamic> json) =
      _$PaymentStateImpl.fromJson;

  @override
  List<CartProduct> get listProduct;
  @override
  double get totalPrice;
  @override
  @JsonKey(ignore: true)
  _$$PaymentStateImplCopyWith<_$PaymentStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
