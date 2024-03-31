import 'package:ecomerce_project/product_detail/infrastructure/models/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'random_product_state.freezed.dart';

part 'random_product_state.g.dart';

@freezed
class RandomProductState with _$RandomProductState {
  const factory RandomProductState({
    Product? product,
    @Default(false) bool isLoading,
  }) = _RandomProductState;

  factory RandomProductState.fromJson(Map<String, dynamic> json) =>
      _$RandomProductStateFromJson(json);
}
