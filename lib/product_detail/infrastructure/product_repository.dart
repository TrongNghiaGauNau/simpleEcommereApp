import 'dart:math';
import 'package:ecomerce_project/core/infrastructure/http_service.dart';
import 'package:ecomerce_project/product_detail/infrastructure/models/product.dart';
import 'package:ecomerce_project/product_detail/infrastructure/params/get_product_param.dart';
import 'package:flutter/material.dart';

class ProductRepository {
  ProductRepository(this._service);

  final HttpService _service;

  Future<Product?> getRandomProduct() async {
    try {
      final randomProductId = (Random().nextInt(19) + 1).toString();
      final response =
          await _service.get(GetProductDetailParam(randomProductId.toString()));
      if (response.statusCode == 200) {
        final data = response.data;
        final product = Product.fromJson(data);
        return product;
      }
      debugPrint(
          'getRandomProduct statusCode is not success: ${response.statusCode}');
      return null;
    } catch (e) {
      debugPrint('getRandomProduct error: $e');
      return null;
    }
  }

  Future<Product?> getProductDetail(String productId) async {
    try {
      final response = await _service.get(GetProductDetailParam(productId));
      if (response.statusCode == 200) {
        final data = response.data;
        final product = Product.fromJson(data);
        return product;
      }
      debugPrint(
          'getProductDetail statusCode is not success: ${response.statusCode}');
      return null;
    } catch (e) {
      debugPrint('getProductDetail error: $e');
      return null;
    }
  }

  Future<List<String>?> getCategories() async {
    try {
      final response = await _service.get(GetCategoriesParam());

      if (response.statusCode == 200) {
        final data = response.data;
        final List<String> categories = [...data];
        return categories;
      }
      debugPrint(
          'getCategories statusCode is not success: ${response.statusCode}');
      return null;
    } catch (e) {
      debugPrint('getCategories error: $e');
      return null;
    }
  }

  Future<List<Product>?> getAllProductsBaseOnCategory(
      {String? category}) async {
    try {
      final response = await _service
          .get(GetAllProductsBaseOnCategoryParam(category: category));

      if (response.statusCode == 200) {
        final data = response.data;
        final allProducts = [...data];
        final List<Product> productsList =
            allProducts.map((e) => Product.fromJson(e)).toList();
        return productsList;
      }
      debugPrint(
          'getAllProducts statusCode is not success: ${response.statusCode}');
      return null;
    } catch (e) {
      debugPrint('getAllProducts error: $e');
      return null;
    }
  }
}
