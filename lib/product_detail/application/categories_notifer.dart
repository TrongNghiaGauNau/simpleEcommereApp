import 'package:ecomerce_project/product_detail/infrastructure/models/categories_state/categories_state.dart';
import 'package:ecomerce_project/product_detail/infrastructure/product_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CategoriesNotifier extends StateNotifier<CategoriesState> {
  CategoriesNotifier({required ProductRepository productRepository})
      : _productRepository = productRepository,
        super(const CategoriesState());

  final ProductRepository _productRepository;

  Future<void> getCategories() async {
    state = state.copyWith(isLoading: true);
    final categories = await _productRepository.getCategories();
    state = state.copyWith(isLoading: false, listCategories: categories);
  }
}
