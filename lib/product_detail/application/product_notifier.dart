import 'package:ecomerce_project/product_detail/infrastructure/models/product.dart';
import 'package:ecomerce_project/product_detail/infrastructure/models/product_state/product_state.dart';
import 'package:ecomerce_project/product_detail/infrastructure/product_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProductNotifier extends StateNotifier<ProductState> {
  ProductNotifier({required ProductRepository productRepository})
      : _productRepository = productRepository,
        super(const ProductState());

  final ProductRepository _productRepository;

  Future<Product?> getProductDetail(String productId) async {
    state = state.copyWith(isLoading: true);
    final product = await _productRepository.getProductDetail(productId);
    state = state.copyWith(isLoading: false, product: product);
    return product;
  }
}
