import 'package:ecomerce_project/cart/application/cart_notifier.dart';
import 'package:ecomerce_project/cart/application/cart_product_notifier.dart';
import 'package:ecomerce_project/cart/infrastructure/models/cart_product_state/cart_product.dart';
import 'package:ecomerce_project/product_detail/infrastructure/models/product.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final cartNotifierProvider =
    StateNotifierProvider<CartNotifier, List<Product>>((ref) {
  return CartNotifier();
});

final cartProductNotifierProvider =
    StateNotifierProvider.family<CartProductNotifier, CartProduct, Product>(
        (ref, product) {
  final cartProduct = CartProduct(id: product.id, product: product);
  return CartProductNotifier(product: cartProduct);
});
