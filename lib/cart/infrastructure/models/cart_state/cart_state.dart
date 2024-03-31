import 'package:ecomerce_project/cart/infrastructure/models/cart_product_state/cart_product.dart';
import 'package:ecomerce_project/product_detail/infrastructure/models/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_state.freezed.dart';
part 'cart_state.g.dart';

@freezed
class CartState with _$CartState {
  const factory CartState({
    @Default([]) List<Product> cartList,
  }) = _CartState;

  factory CartState.fromJson(Map<String, dynamic> json) =>
      _$CartStateFromJson(json);
}
