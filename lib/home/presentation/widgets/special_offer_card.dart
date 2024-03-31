import 'package:ecomerce_project/core/presentation/commons/loading.shimmer.dart';
import 'package:ecomerce_project/product_detail/shared/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SpecialOfferCard extends HookConsumerWidget {
  const SpecialOfferCard({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final randomProduct = ref.watch(randomProductProvider);

    useEffect(() {
      Future(() => ref.read(randomProductProvider.notifier).getRandomProduct());
      return null;
    }, []);

    final size = useMemoized(() => MediaQuery.of(context).size);
    if (randomProduct.isLoading) {
      return LoadingShimmer(
          width: size.width * 0.9, height: size.height * 0.25);
    }

    final product = randomProduct.product;
    return GestureDetector(
      onTap: () {
        // Navigator.of(context).push(
        //   MaterialPageRoute(
        //     builder: (_) => MealDetail(meal: meal),
        //   ),
        // );
      },
      child: Center(
        child: Stack(
          children: [
            Card(
              clipBehavior: Clip.hardEdge,
              elevation: 5,
              child: Container(
                width: size.width * 0.9,
                height: size.height * 0.25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: product == null
                    ? Center(
                        child: GestureDetector(
                            onTap: () => ref
                                .read(randomProductProvider.notifier)
                                .getRandomProduct(),
                            child: const Icon(Icons.replay_outlined)),
                      )
                    : Image.network(
                        product.image,
                        fit: BoxFit.scaleDown,
                      ),
              ),
            ),
            if (product != null)
              Positioned(
                top: 10,
                left: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black38,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          product.title,
                          maxLines: 1,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              overflow: TextOverflow.ellipsis),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: const LinearGradient(
                              colors: [Colors.green, Colors.red])),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          product.category,
                          maxLines: 1,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              overflow: TextOverflow.ellipsis),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
