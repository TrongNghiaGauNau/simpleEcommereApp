import 'package:flutter/material.dart';

class HomeSearchField extends StatelessWidget {
  const HomeSearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: TextField(
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
    );
  }
}
