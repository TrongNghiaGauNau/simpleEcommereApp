import 'package:ecomerce_project/core/shared/providers.dart';
import 'package:ecomerce_project/product_detail/application/random_product_notifier.dart';
import 'package:ecomerce_project/product_detail/infrastructure/models/product.dart';
import 'package:riverpod/riverpod.dart';

final randomProductProvider =
    StateNotifierProvider<RandomProductNotifier, Product?>((ref) {
  return RandomProductNotifier(
      productRepository: ref.watch(productRepositoryProvider));
});
