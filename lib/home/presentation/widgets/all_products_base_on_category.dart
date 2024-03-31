import 'package:ecomerce_project/core/presentation/commons/loading.shimmer.dart';
import 'package:ecomerce_project/core/presentation/constants/color.dart';
import 'package:ecomerce_project/core/presentation/extension/context_extension.dart';
import 'package:ecomerce_project/product_detail/infrastructure/models/product.dart';
import 'package:ecomerce_project/product_detail/presentation/screens/product_detail_screen.dart';
import 'package:ecomerce_project/product_detail/shared/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AllProductsBaseOnCategory extends HookConsumerWidget {
  const AllProductsBaseOnCategory({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final listProducts = ref.watch(listProductsProvider);
    useEffect(() {
      Future(() => ref
          .read(listProductsProvider.notifier)
          .getAllProductsBaseOnCategory());
      return null;
    }, []);

    final itemSize =
        context.calculateItemSize(numberOfItems: 2, padding: 10, spacing: 5);
    final loadingList = List.generate(
        5,
        (index) => LoadingShimmer(
              width: itemSize,
              height: itemSize * 2,
            ));

    if (listProducts.isLoading) {
      return Wrap(
        children: loadingList,
      );
    }

    if (listProducts.listCategories == null) {
      return const Center(
        child: Text('Can not load products'),
      );
    }

    final listCategories = listProducts.listCategories!;

    return Wrap(
      spacing: 5,
      runSpacing: 5,
      children: listCategories
          .map((product) => ProductTile(itemSize: itemSize, product: product))
          .toList(),
    );
  }
}

class ProductTile extends StatelessWidget {
  const ProductTile({
    super.key,
    required this.itemSize,
    required this.product,
  });

  final double itemSize;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => ProductDetailScreen(
          product: product,
        ),
      )),
      child: SizedBox(
        width: itemSize,
        height: itemSize * 2,
        child: Card(
          color: Colors.white70,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: itemSize,
                width: itemSize,
                padding: const EdgeInsets.all(5),
                child: Card(
                  child: Image.network(
                    product.image,
                    fit: BoxFit.contain,
                    loadingBuilder: (context, child, loadingProgress) =>
                        loadingProgress == null
                            ? child
                            : LoadingShimmer(
                                width: itemSize,
                                height: itemSize,
                              ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                product.title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: colorPrimmary,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 5),
              const Spacer(),
              Column(
                children: [
                  const Divider(thickness: 2),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text(
                      product.category,
                      style: const TextStyle(
                        color: colorPrimmary,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Row(
                      children: [
                        Text('${product.price}'),
                        const Spacer(),
                        Text('${product.rating!.rate}'),
                        const Icon(Icons.star, color: colorStar),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
