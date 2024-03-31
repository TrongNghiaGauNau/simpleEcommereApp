import 'package:ecomerce_project/home/presentation/widgets/home_title_large.dart';
import 'package:ecomerce_project/home/presentation/widgets/special_offer_card.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TrendingNow extends HookConsumerWidget {
  const TrendingNow({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: 10),
        HomeTitleLarge(text: 'Trending now'),
        SizedBox(height: 10),
        SpecialOfferCard(),
      ],
    );
  }
}
