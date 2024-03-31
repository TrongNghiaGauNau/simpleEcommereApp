import 'package:ecomerce_project/home/presentation/widgets/all_categories.dart';
import 'package:ecomerce_project/home/presentation/widgets/all_products_base_on_category.dart';
import 'package:ecomerce_project/home/presentation/widgets/home_search_field.dart';
import 'package:ecomerce_project/home/presentation/widgets/home_title_large.dart';
import 'package:ecomerce_project/home/presentation/widgets/trending_now.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              HomeSearchField(),
              TrendingNow(),
              SizedBox(height: 10),
              HomeTitleLarge(text: 'All Products'),
              SizedBox(height: 5),
              AllCategories(),
              SizedBox(height: 10),
              AllProductsBaseOnCategory()
            ],
          ),
        ),
      ),
    );
  }
}
