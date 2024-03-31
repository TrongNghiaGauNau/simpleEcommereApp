import 'package:ecomerce_project/product_detail/infrastructure/models/product.dart';
import 'package:ecomerce_project/product_detail/infrastructure/models/random_product_state/random_product_state.dart';
import 'package:ecomerce_project/product_detail/infrastructure/product_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RandomProductNotifier extends StateNotifier<RandomProductState> {
  RandomProductNotifier({required ProductRepository productRepository})
      : _productRepository = productRepository,
        super(const RandomProductState());

  final ProductRepository _productRepository;

  Future<Product?> getRandomProduct() async {
    state = state.copyWith(isLoading: true);
    final randomProduct = await _productRepository.getRandomProduct();
    state = state.copyWith(isLoading: false, product: randomProduct);
    return randomProduct;
  }
}
