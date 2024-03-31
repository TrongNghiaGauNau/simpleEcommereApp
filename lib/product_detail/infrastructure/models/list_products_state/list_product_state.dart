import 'package:ecomerce_project/product_detail/infrastructure/models/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_product_state.freezed.dart';
part 'list_product_state.g.dart';

@freezed
class ListProductState with _$ListProductState {
  const factory ListProductState({
    List<Product>? listCategories,
    @Default(false) bool isLoading,
  }) = _ListProductState;

  factory ListProductState.fromJson(Map<String, dynamic> json) =>
      _$ListProductStateFromJson(json);
}
