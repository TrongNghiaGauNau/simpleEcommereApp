import 'package:ecomerce_project/product_detail/infrastructure/models/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_state.freezed.dart';

part 'product_state.g.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState({
    Product? product,
    @Default(false) bool isLoading,
  }) = _ProductState;

  factory ProductState.fromJson(Map<String, dynamic> json) =>
      _$ProductStateFromJson(json);
}
