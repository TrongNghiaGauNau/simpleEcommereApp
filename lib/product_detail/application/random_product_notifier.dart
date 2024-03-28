import 'package:ecomerce_project/product_detail/infrastructure/models/product.dart';
import 'package:ecomerce_project/product_detail/infrastructure/product_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RandomProductNotifier extends StateNotifier<Product?> {
  RandomProductNotifier({required ProductRepository productRepository})
      : _productRepository = productRepository,
        super(null);

  final ProductRepository _productRepository;

  Future<Product?> getRandomProduct() async {
    final randomProduct = await _productRepository.getRandomProduct();
    state = randomProduct;
    return randomProduct;
  }
}
