import 'package:ecomerce_project/core/shared/providers.dart';
import 'package:ecomerce_project/product_detail/application/categories_notifer.dart';
import 'package:ecomerce_project/product_detail/application/list_product_notifier.dart';
import 'package:ecomerce_project/product_detail/application/product_notifier.dart';
import 'package:ecomerce_project/product_detail/application/random_product_notifier.dart';
import 'package:ecomerce_project/product_detail/infrastructure/models/categories_state/categories_state.dart';
import 'package:ecomerce_project/product_detail/infrastructure/models/list_products_state/list_product_state.dart';
import 'package:ecomerce_project/product_detail/infrastructure/models/product_state/product_state.dart';
import 'package:ecomerce_project/product_detail/infrastructure/models/random_product_state/random_product_state.dart';
import 'package:riverpod/riverpod.dart';

final randomProductProvider =
    StateNotifierProvider<RandomProductNotifier, RandomProductState>((ref) {
  return RandomProductNotifier(
      productRepository: ref.watch(productRepositoryProvider));
});

final productProvider =
    StateNotifierProvider<ProductNotifier, ProductState>((ref) {
  return ProductNotifier(
      productRepository: ref.watch(productRepositoryProvider));
});

final categoriesProvider =
    StateNotifierProvider<CategoriesNotifier, CategoriesState>((ref) {
  return CategoriesNotifier(
      productRepository: ref.watch(productRepositoryProvider));
});

final listProductsProvider =
    StateNotifierProvider<ListProductNotifier, ListProductState>((ref) {
  return ListProductNotifier(
      productRepository: ref.watch(productRepositoryProvider));
});
