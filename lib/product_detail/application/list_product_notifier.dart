import 'package:ecomerce_project/product_detail/infrastructure/models/list_products_state/list_product_state.dart';
import 'package:ecomerce_project/product_detail/infrastructure/product_repository.dart';
import 'package:riverpod/riverpod.dart';

class ListProductNotifier extends StateNotifier<ListProductState> {
  ListProductNotifier({required ProductRepository productRepository})
      : _productRepository = productRepository,
        super(const ListProductState());

  final ProductRepository _productRepository;

  Future<void> getAllProductsBaseOnCategory({String? category}) async {
    state = state.copyWith(isLoading: true);
    final listProduct = await _productRepository.getAllProductsBaseOnCategory(
        category: category);
    state = state.copyWith(isLoading: false, listCategories: listProduct);
  }
}
