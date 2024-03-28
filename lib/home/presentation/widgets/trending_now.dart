import 'package:ecomerce_project/core/shared/const.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TrendingNow extends HookConsumerWidget {
  const TrendingNow({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final randomMeal = ref.watch(randomMealProvider);
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
          child: SpecialOfferCard(),
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

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    super.key,
    // required this.meal,
  });

  // final Meals meal;

  @override
  Widget build(BuildContext context) {
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
                child: Image.network(
                  defaultAvatar,
                  fit: BoxFit.fill,
                ),
              ),
            ),
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
                          text: 'product name',
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(text: 'Category')
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
