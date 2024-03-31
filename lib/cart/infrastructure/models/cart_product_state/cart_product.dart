import 'package:ecomerce_project/product_detail/infrastructure/models/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_product.freezed.dart';

part 'cart_product.g.dart';

@freezed
class CartProduct with _$CartProduct {
  const factory CartProduct({
    required int id,
    required Product product,
    @Default(0) int amount,
    @Default(false) bool isChecked,
  }) = _CartProduct;

  factory CartProduct.fromJson(Map<String, dynamic> json) =>
      _$CartProductFromJson(json);
}
