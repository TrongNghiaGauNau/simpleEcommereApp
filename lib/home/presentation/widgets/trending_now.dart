import 'package:ecomerce_project/core/shared/const.dart';
import 'package:ecomerce_project/product_detail/infrastructure/models/product.dart';
import 'package:ecomerce_project/product_detail/shared/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TrendingNow extends HookConsumerWidget {
  const TrendingNow({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 10),
        Align(
          alignment: Alignment.centerLeft,
          child: Text('Trending now',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  )),
        ),
        const SizedBox(height: 10),
        SizedBox(
          width: double.infinity,
          child: const SpecialOfferCard(),
          // child: randomMeal.when(
          //   data: (meal) {
          //     return SpecialOfferCard(
          //       // meal: meal,
          //     );
          //   },
          //   error: (error, stackTrace) => const Center(
          //     child: Text('Can not get meal...'),
          //   ),
          //   loading: () => const Center(
          //     child: CircularProgressIndicator(),
          //   ),
          // ),
        ),
      ],
    );
  }
}

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

    final size = MediaQuery.of(context).size;
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
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Container(
                width: size.width * 0.9,
                height: size.height * 0.25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: randomProduct == null
                    ? Center(
                        child: GestureDetector(
                            onTap: () => ref
                                .read(randomProductProvider.notifier)
                                .getRandomProduct(),
                            child: const Icon(Icons.replay_outlined)),
                      )
                    : Image.network(
                        randomProduct.image ?? defaultAvatar,
                        fit: BoxFit.scaleDown,
                      ),
              ),
            ),
            if (randomProduct != null)
              Positioned(
                top: 10,
                left: 20,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black38,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text.rich(
                      TextSpan(
                        style: const TextStyle(color: Colors.white),
                        children: [
                          TextSpan(
                            text: randomProduct.title,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(text: randomProduct.category)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
