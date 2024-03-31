import 'package:ecomerce_project/core/infrastructure/interface_params.dart';
import 'package:ecomerce_project/core/infrastructure/model/api_path.dart';

class GetProductDetailParam extends IParam {
  final String productId;

  GetProductDetailParam(this.productId);
  @override
  get json => null;

  @override
  String get link => APIPath.getSingleProduct(productId);
}

class GetCategoriesParam extends IParam {
  GetCategoriesParam();
  @override
  get json => null;

  @override
  String get link => APIPath.categories;
}

class GetAllProductsBaseOnCategoryParam extends IParam {
  GetAllProductsBaseOnCategoryParam({this.category});
  final String? category;
  @override
  get json => null;

  @override
  String get link => category == null
      ? APIPath.products
      : APIPath.getProductsBaseOnCategories(category!);
}
