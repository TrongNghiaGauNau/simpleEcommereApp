import 'package:ecomerce_project/cart/presentation/widgets/cart_product_tile.dart';
import 'package:ecomerce_project/cart/presentation/widgets/total_payment.dart';
import 'package:ecomerce_project/cart/shared/provides.dart';
import 'package:ecomerce_project/core/application/utils.dart';
import 'package:ecomerce_project/core/presentation/constants/color.dart';
import 'package:ecomerce_project/order/shared/providers.dart';
import 'package:ecomerce_project/payment/shared/providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CartScreen extends HookConsumerWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartNoti = ref.watch(cartNotifierProvider);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: cartNoti.isEmpty
            ? const Center(
                child: Text('Cart is empty'),
              )
            : ListView(
                shrinkWrap: true,
                children: [
                  ...cartNoti
                      .map((product) => CartProductTile(product: product))
                      .toList(),
                  const Divider(thickness: 2),
                  const TotalPayment(),
                  const SizedBox(height: 20),
                  const PurchaseButton(),
                ],
              ),
      ),
    );
  }
}

class PurchaseButton extends ConsumerWidget {
  const PurchaseButton({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartProducts = ref
        .watch(paymentNotifiersProvider.select((value) => value.listProduct));
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 100),
      decoration: BoxDecoration(
        color: colorPrimmary,
        border: Border.all(),
        borderRadius: BorderRadius.circular(50),
      ),
      child: GestureDetector(
        onTap: () {
          final shippingProducts = cartProducts;

          final paidProducts = ref
              .read(paymentNotifiersProvider.notifier)
              .removePurchasedFromPayment();

          ref
              .read(cartNotifierProvider.notifier)
              .removeAllPaiedFromCart(paidProducts);
          ref
              .read(shippingNotifierProvider.notifier)
              .addToShipping(shippingProducts);
          showSnackbar(context, 'Payment succeed!');
        },
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Purchase',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(width: 5),
            Icon(Icons.payment)
          ],
        ),
      ),
    );
  }
}
