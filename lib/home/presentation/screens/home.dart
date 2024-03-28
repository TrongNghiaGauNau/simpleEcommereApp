import 'package:ecomerce_project/home/presentation/widgets/all_categories.dart';
import 'package:ecomerce_project/home/presentation/widgets/home_search_field.dart';
import 'package:ecomerce_project/home/presentation/widgets/trending_now.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              const HomeSearchField(),
              const TrendingNow(),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.centerLeft,
                child: Text('All Products',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        )),
              ),
              AllCategories(),
              // AllProductsBaseOnCategory(
              //   listMeals: listMeals,
              // )
            ],
          ),
        ),
      ),
    );
  }
}
