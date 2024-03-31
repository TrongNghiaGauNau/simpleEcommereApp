import 'package:ecomerce_project/cart/infrastructure/models/cart_product_state/cart_product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_state.freezed.dart';

part 'payment_state.g.dart';

@freezed
class PaymentState with _$PaymentState {
  const factory PaymentState({
    @Default([]) List<CartProduct> listProduct,
    @Default(0.0) double totalPrice,
  }) = _PaymentState;

  factory PaymentState.fromJson(Map<String, dynamic> json) =>
      _$PaymentStateFromJson(json);
}
