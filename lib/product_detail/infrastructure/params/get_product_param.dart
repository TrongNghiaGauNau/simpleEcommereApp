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
