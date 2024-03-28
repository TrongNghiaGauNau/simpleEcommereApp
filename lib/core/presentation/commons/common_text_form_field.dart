import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CommonTextFormField extends HookWidget {
  const CommonTextFormField({
    super.key,
    required this.controller,
    this.hintText = '',
    this.isPassword = false,
  });
  final TextEditingController controller;
  final String hintText;
  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    final obscureText = useState(false);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextFormField(
        obscureText: obscureText.value,
        controller: controller,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please dont leave field blank';
          }
          return null;
        },
        decoration: InputDecoration(
          hintText: hintText,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide()),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide()),
          suffixIcon: isPassword
              ? GestureDetector(
                  onTap: () => obscureText.value = !obscureText.value,
                  child: Icon(obscureText.value
                      ? Icons.visibility
                      : Icons.visibility_off),
                )
              : null,
        ),
      ),
    );
  }
}
