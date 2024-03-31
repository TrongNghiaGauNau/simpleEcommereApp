import 'package:ecomerce_project/payment/shared/providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TotalPayment extends ConsumerWidget {
  const TotalPayment({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final paymentNoti =
        ref.watch(paymentNotifiersProvider.select((value) => value.totalPrice));
    return Row(
      children: [
        const Text(
          'Total Price:',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        const SizedBox(width: 5),
        Text(
          '\$$paymentNoti',
          style: const TextStyle(
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
