import 'package:ecomerce_project/cart/shared/provides.dart';
import 'package:ecomerce_project/core/presentation/commons/loading.shimmer.dart';
import 'package:ecomerce_project/core/presentation/constants/color.dart';
import 'package:ecomerce_project/product_detail/infrastructure/models/product.dart';
import 'package:ecomerce_project/product_detail/shared/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProductDetailScreen extends HookConsumerWidget {
  const ProductDetailScreen({super.key, required this.product});

  final Product product;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productDetail = ref.watch(productProvider);

    useEffect(() {
      Future(() => ref
          .read(productProvider.notifier)
          .getProductDetail(product.id.toString()));
      return null;
    }, []);

    if (productDetail.isLoading) {}

    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Detail'),
        backgroundColor: colorPrimmary,
      ),
      body: productDetail.isLoading
          ? const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LoadingShimmer(width: double.infinity, height: 500),
                LoadingShimmer(width: double.infinity, height: 20),
                LoadingShimmer(width: double.infinity, height: 20),
                LoadingShimmer(width: double.infinity, height: 20),
                LoadingShimmer(width: double.infinity, height: 20),
              ],
            )
          : productDetail.product == null
              ? const Center(child: Text('Can not load product detail'))
              : SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: SizedBox(
                            width: double.infinity,
                            child: Card(
                              elevation: 10,
                              shadowColor: Colors.amberAccent,
                              child:
                                  Image.network(productDetail.product!.image),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          productDetail.product!.title,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: colorPrimmary,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            const Text(
                              'Category: ',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 17),
                            ),
                            Text(
                              productDetail.product!.category,
                              style: const TextStyle(
                                  fontSize: 17, fontStyle: FontStyle.italic),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Description',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 20),
                        ),
                        Text(
                          productDetail.product!.description,
                          style: const TextStyle(fontSize: 17),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            const Text(
                              'Price: ',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17,
                                  decoration: TextDecoration.underline),
                            ),
                            Text(
                              '\$${productDetail.product!.price}',
                              style: const TextStyle(
                                  fontSize: 25, color: colorPrimmary),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            const Text(
                              'Rating: ',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17,
                                  decoration: TextDecoration.underline),
                            ),
                            Text(
                              '${productDetail.product!.rating!.rate}',
                              style: const TextStyle(
                                  fontSize: 25, color: colorPrimmary),
                            ),
                            const Icon(Icons.star, color: colorStar),
                            Text(
                              '(${productDetail.product!.rating!.count} votes)',
                              style: const TextStyle(
                                  fontSize: 25, color: colorPrimmary),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                  ),
                ),
      bottomNavigationBar: productDetail.isLoading
          ? null
          : productDetail.product == null
              ? null
              : Container(
                  height: 100,
                  decoration: const BoxDecoration(
                    color: colorPrimmary,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 5,
                        blurRadius: 10,
                      )
                    ],
                  ),
                  child: Center(
                    child: GestureDetector(
                      onTap: () => ref
                          .read(cartNotifierProvider.notifier)
                          .addToCart(product),
                      child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Text(
                            'Add to cart',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          )),
                    ),
                  ),
                ),
    );
  }
}
