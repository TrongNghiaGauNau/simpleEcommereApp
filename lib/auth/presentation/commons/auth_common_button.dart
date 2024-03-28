import 'package:flutter/material.dart';

class CommonAuthButton extends StatelessWidget {
  const CommonAuthButton({
    super.key,
    this.onTap,
    this.isSignIn = true,
  });

  final void Function()? onTap;
  final bool isSignIn;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 150),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          gradient: const LinearGradient(
              colors: [Colors.orange, Colors.orangeAccent]),
          boxShadow: const [BoxShadow(blurRadius: 10)],
        ),
        child: GestureDetector(
          child: Center(
            child: Text(
              isSignIn ? "Login" : "Sign Up",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
