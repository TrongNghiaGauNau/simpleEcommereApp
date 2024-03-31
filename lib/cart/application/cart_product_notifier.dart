import 'package:ecomerce_project/cart/infrastructure/models/cart_product_state/cart_product.dart';
import 'package:ecomerce_project/product_detail/infrastructure/models/product.dart';
import 'package:riverpod/riverpod.dart';

class CartProductNotifier extends StateNotifier<CartProduct> {
  CartProductNotifier({required this.product}) : super(product);

  final CartProduct product;

  void increaseAmount(Product product) {
    final currentAmount = state.amount;
    state = state.copyWith(amount: currentAmount + 1);
  }

  void decreaseAmount(Product product) {
    final currentAmount = state.amount;
    if (currentAmount > 0) {
      state = state.copyWith(amount: currentAmount - 1);
    }
  }

  void changeIsChecked(bool isChecked) {
    state = state.copyWith(isChecked: isChecked);
  }
}
