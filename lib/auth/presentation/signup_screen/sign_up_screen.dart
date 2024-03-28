import 'package:ecomerce_project/auth/presentation/commons/auth_common_button.dart';
import 'package:ecomerce_project/auth/presentation/login/login_screen.dart';
import 'package:ecomerce_project/auth/shared/const.dart';
import 'package:ecomerce_project/auth/shared/providers.dart';
import 'package:ecomerce_project/core/application/utils.dart';
import 'package:ecomerce_project/core/presentation/commons/common_text_form_field.dart';
import 'package:ecomerce_project/core/presentation/mixins.dart';
import 'package:ecomerce_project/core/shared/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RegisterScreen extends HookConsumerWidget with DismissKeyboard {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = GlobalKey<FormState>();
    final usernameController = useTextEditingController();
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final confirmPasswordController = useTextEditingController();

    signUp() {
      if (passwordController.text != confirmPasswordController.text) {
        showSnackbar(context, "Password confirm does not matched");
        return;
      }
      if (formKey.currentState!.validate()) {
        ref.read(authNotifierProvider.notifier).signUp(
              userName: usernameController.text,
              email: emailController.text,
              password: passwordController.text,
              context: context,
            );
      }
    }

    return SafeArea(
      bottom: false,
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  const SizedBox(height: 50),
                  const SizedBox(
                    height: 150,
                    width: 150,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(shopImageSource),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Create new account",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontSize: 25),
                  ),
                  const SizedBox(height: 20),
                  CommonTextFormField(
                    controller: usernameController,
                    hintText: 'Username',
                  ),
                  const SizedBox(height: 20),
                  CommonTextFormField(
                    controller: emailController,
                    hintText: 'Email',
                  ),
                  const SizedBox(height: 20),
                  CommonTextFormField(
                    controller: passwordController,
                    hintText: 'Password',
                    isPassword: true,
                  ),
                  const SizedBox(height: 20),
                  CommonTextFormField(
                    controller: confirmPasswordController,
                    hintText: 'Confirm password',
                    isPassword: true,
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: GestureDetector(
                        onTap: () => Navigator.of(context)
                            .pushReplacement(MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        )),
                        child: const Text(
                          'Already have account? Log in',
                          style:
                              TextStyle(decoration: TextDecoration.underline),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),
                  CommonAuthButton(onTap: signUp, isSignIn: false),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
