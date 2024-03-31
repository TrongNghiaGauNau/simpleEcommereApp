import 'package:ecomerce_project/core/presentation/commons/loading.shimmer.dart';
import 'package:ecomerce_project/core/presentation/constants/color.dart';
import 'package:ecomerce_project/home/shared/providers.dart';
import 'package:ecomerce_project/product_detail/shared/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AllCategories extends HookConsumerWidget {
  const AllCategories({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<String> allCategories = ['All'];
    final categories = ref.watch(categoriesProvider);
    final loadingList = List.generate(
        5,
        (index) => const LoadingShimmer(
              width: 70,
              height: 30,
            ));

    useEffect(() {
      Future(() => ref.read(categoriesProvider.notifier).getCategories());
      return null;
    }, []);

    if (categories.isLoading) {
      return Wrap(children: loadingList);
    }

    if (categories.listCategories != null) {
      allCategories = [...allCategories, ...categories.listCategories!];
    }
    return SizedBox(
      width: double.infinity,
      child: Wrap(
        spacing: 5,
        runSpacing: 5,
        alignment: WrapAlignment.start,
        children: allCategories.map((e) => CategoryTile(text: e)).toList(),
      ),
    );
  }
}

class CategoryTile extends ConsumerWidget {
  const CategoryTile({super.key, required this.text});

  final String text;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categoryTab = ref.watch(categoryTabProvider);

    return GestureDetector(
      onTap: () {
        ref.read(categoryTabProvider.notifier).state = text;
        ref.read(listProductsProvider.notifier).getAllProductsBaseOnCategory(
            category: text == 'All' ? null : text);
      },
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: categoryTab == text ? colorPrimmary : Colors.black12,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(),
        ),
        child: Text(text),
      ),
    );
  }
}
