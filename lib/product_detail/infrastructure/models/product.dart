import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';

part 'product.g.dart';

@freezed
class Product with _$Product {
  const factory Product({
    required int id,
    required String title,
    required double price,
    required String description,
    required String category,
    required String image,
    Rating? rating,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}

@freezed
class Rating with _$Rating {
  const factory Rating({
    double? rate,
    int? count,
  }) = _Rating;

  factory Rating.fromJson(Map<String, dynamic> json) => _$RatingFromJson(json);
}
