import 'package:ecomerce_project/home/presentation/widgets/all_categories.dart';
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
              TextField(
                decoration: InputDecoration(
                  hintText: 'Search something...',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide()),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide()),
                  prefixIcon: const Icon(Icons.search),
                ),
              ),
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
