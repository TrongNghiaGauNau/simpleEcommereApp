import 'package:ecomerce_project/cart/infrastructure/models/cart_product_state/cart_product.dart';
import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';

class ShippingNotifier extends StateNotifier<List<CartProduct>> {
  ShippingNotifier() : super(const []);

  void addToShipping(List<CartProduct> listProduct) {
    state = [...state, ...listProduct];
  }
}
