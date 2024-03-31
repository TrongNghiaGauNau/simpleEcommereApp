import 'package:ecomerce_project/cart/shared/provides.dart';
import 'package:ecomerce_project/core/presentation/constants/color.dart';
import 'package:ecomerce_project/payment/shared/providers.dart';
import 'package:ecomerce_project/product_detail/infrastructure/models/product.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CartProductTile extends ConsumerWidget {
  const CartProductTile({super.key, required this.product});

  final Product product;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartProduct = ref.watch(cartProductNotifierProvider(product));

    return Column(
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
                      product.image,
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
                      product.title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: colorPrimmary,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    Text('\$${product.price}'),
                  ],
                ),
              ),
              const Spacer(),
              Column(
                children: [
                  GestureDetector(
                    onTap: () => ref
                        .read(cartNotifierProvider.notifier)
                        .removeFromCart(product),
                    child: const Icon(Icons.delete, color: Colors.red),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          ref
                              .read(
                                  cartProductNotifierProvider(product).notifier)
                              .increaseAmount(product);
                        },
                        child: const Icon(Icons.add),
                      ),
                      const SizedBox(width: 5),
                      Text('${cartProduct.amount}'),
                      const SizedBox(width: 5),
                      GestureDetector(
                        onTap: () {
                          ref
                              .read(
                                  cartProductNotifierProvider(product).notifier)
                              .decreaseAmount(product);
                        },
                        child: const Icon(Icons.remove),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Text('Check to pay'),
            Checkbox(
              value: cartProduct.isChecked,
              activeColor: colorPrimmary,
              onChanged: (value) {
                if (value != null) {
                  ref
                      .read(cartProductNotifierProvider(product).notifier)
                      .changeIsChecked(value);
                  if (value == true) {
                    ref
                        .read(paymentNotifiersProvider.notifier)
                        .addToPayment(cartProduct);
                  } else {
                    ref
                        .read(paymentNotifiersProvider.notifier)
                        .removeFromPayment(cartProduct);
                  }
                }
              },
            ),
          ],
        )
      ],
    );
  }
}
