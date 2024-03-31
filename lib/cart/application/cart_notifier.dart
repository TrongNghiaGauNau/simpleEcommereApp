import 'package:ecomerce_project/cart/infrastructure/models/cart_product_state/cart_product.dart';
import 'package:ecomerce_project/product_detail/infrastructure/models/product.dart';
import 'package:riverpod/riverpod.dart';

class CartNotifier extends StateNotifier<List<Product>> {
  CartNotifier() : super(const []);

  void addToCart(Product product) {
    // final cartProduct = CartProduct(id: product.id, product: product);
    // Create a new list with the added product (immutable approach)
    state = [...state, product];
  }

  void removeFromCart(Product product) {
    // Existing logic for removing product remains the same
    state = state.where((item) => item != product).toList();
  }

  void removeAllPaiedFromCart(List<CartProduct> listProduct) {
    final currentList = state;
    for (final product in listProduct) {
      currentList.removeWhere((element) => element.id == product.id);
    }
    state = [...currentList];
  }
}
