import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class LoadingShimmer extends StatelessWidget {
  const LoadingShimmer({super.key, required this.width, required this.height})
      : super();

  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        baseColor: Colors.grey,
        highlightColor: Colors.grey[100]!,
        child: SizedBox(
          width: width,
          height: height,
          child: const Card(),
        ));
  }
}
