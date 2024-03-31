import 'package:flutter/material.dart';

class HomeTitleLarge extends StatelessWidget {
  const HomeTitleLarge({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(text,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              )),
    );
  }
}
