import 'package:ecomerce_project/cart/infrastructure/models/cart_product_state/cart_product.dart';
import 'package:ecomerce_project/order/application/shipping_notifier.dart';
import 'package:riverpod/riverpod.dart';

final shippingNotifierProvider =
    StateNotifierProvider<ShippingNotifier, List<CartProduct>>((ref) {
  return ShippingNotifier();
});
