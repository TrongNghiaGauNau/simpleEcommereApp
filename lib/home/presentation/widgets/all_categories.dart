import 'package:flutter/material.dart';

class AllCategories extends StatelessWidget {
  const AllCategories({
    super.key,
    // required this.allCategories,
    // required this.categoryClicked,
    // required this.categoryName,
  });

  // final AsyncValue<List<String>> allCategories;
  // final ValueNotifier<int> categoryClicked;
  // final ValueNotifier<String> categoryName;

  @override
  Widget build(BuildContext context) {
    final List<Widget> a = [
      Text('product 1'),
      Text('product 2'),
      Text('product 3'),
      Text('product 4'),
    ];

    return SizedBox(
      height: 40,
      child: Wrap(
        children: a,
      ),
      // child: allCategories.when(
      //   data: (categories) {
      //     return ListView.builder(
      //       scrollDirection: Axis.horizontal,
      //       itemCount: categories.length,
      //       itemBuilder: (context, index) {
      //         return GestureDetector(
      //           onTap: () {
      //             categoryClicked.value = index;
      //             categoryName.value = categories[index];
      //             // ref.read(getAllCategoryMeals(categoryName.value));
      //           },
      //           child: Container(
      //             margin: const EdgeInsets.symmetric(horizontal: 5),
      //             decoration: BoxDecoration(
      //               borderRadius: BorderRadius.circular(10),
      //               color: categoryClicked.value == index
      //                   ? Colors.red
      //                   : Colors.transparent,
      //             ),
      //             child: Center(
      //               child: Padding(
      //                 padding: const EdgeInsets.all(8),
      //                 child: Text(
      //                   categories[index],
      //                   style: TextStyle(
      //                       color: categoryClicked.value == index
      //                           ? Colors.white
      //                           : Colors.redAccent,
      //                       fontSize: 16,
      //                       fontWeight: FontWeight.bold),
      //                 ),
      //               ),
      //             ),
      //           ),
      //         );
      //       },
      //     );
      //   },
      //   error: (error, stackTrace) => const Center(
      //     child: Text('Can not load categories'),
      //   ),
      //   loading: () => const CircularProgressIndicator(),
      // ),
    );
  }
}
