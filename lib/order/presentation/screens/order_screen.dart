import 'package:ecomerce_project/cart/infrastructure/models/cart_product_state/cart_product.dart';
import 'package:ecomerce_project/core/presentation/constants/color.dart';
import 'package:ecomerce_project/order/shared/providers.dart';
import 'package:ecomerce_project/product_detail/infrastructure/models/product.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OrderScreen extends HookConsumerWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final shippingOrders = ref.watch(shippingNotifierProvider);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: shippingOrders.isEmpty
            ? const Center(
                child: Text('Cart is empty'),
              )
            : ListView(
                shrinkWrap: true,
                children: [
                  ...shippingOrders
                      .map((product) => ShippingProductTile(product: product))
                      .toList(),
                ],
              ),
      ),
    );
  }
}

class ShippingProductTile extends ConsumerWidget {
  const ShippingProductTile({super.key, required this.product});

  final CartProduct product;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            height: 100,
            width: double.infinity,
            clipBehavior: Clip.hardEdge,
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              children: [
                Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all()),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Padding(
                      padding: const EdgeInsets.all(2),
                      child: Image.network(
                        product.product.image,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 5),
                SizedBox(
                  width: 150,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.product.title,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: colorPrimmary,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      Text('\$${product.product.price}'),
                    ],
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
