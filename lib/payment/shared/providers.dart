import 'package:ecomerce_project/payment/application/payment_notifier.dart';
import 'package:ecomerce_project/payment/infrastructure/payment_state.dart';
import 'package:riverpod/riverpod.dart';

final paymentNotifiersProvider =
    StateNotifierProvider<PaymentNotifier, PaymentState>((ref) {
  return PaymentNotifier();
});
