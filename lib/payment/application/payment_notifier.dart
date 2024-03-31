import 'package:ecomerce_project/cart/infrastructure/models/cart_product_state/cart_product.dart';
import 'package:ecomerce_project/payment/infrastructure/payment_state.dart';
import 'package:riverpod/riverpod.dart';

class PaymentNotifier extends StateNotifier<PaymentState> {
  PaymentNotifier() : super(const PaymentState());

  void addToPayment(CartProduct product) {
    final currentPaymentList = [...state.listProduct, product];
    state = state.copyWith(listProduct: currentPaymentList);
    final totalPrice = caculateTotalPrice();
    state = state.copyWith(totalPrice: totalPrice);
  }

  void removeFromPayment(CartProduct product) {
    List<CartProduct> removedPaymentList = [...state.listProduct];
    removedPaymentList.removeWhere((element) => element.id == product.id);
    state = state.copyWith(listProduct: removedPaymentList);
    final totalPrice = caculateTotalPrice();
    state = state.copyWith(totalPrice: totalPrice);
  }

  List<CartProduct> removePurchasedFromPayment() {
    List<CartProduct> currentPaymentList = [...state.listProduct];
    currentPaymentList.removeWhere((element) => element.isChecked == true);

    state = state.copyWith(listProduct: currentPaymentList);
    final totalPrice = caculateTotalPrice();
    state = state.copyWith(totalPrice: totalPrice);

    return currentPaymentList;
  }

  double caculateTotalPrice() {
    double total = 0;
    for (final product in state.listProduct) {
      final totalPerProduct = product.amount * product.product.price;
      total = total + totalPerProduct;
    }
    final roundedTotal = total.toStringAsFixed(2);
    return double.parse(roundedTotal);
  }
}
