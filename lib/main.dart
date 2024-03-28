import 'package:ecomerce_project/auth/presentation/login/login_screen.dart';
import 'package:ecomerce_project/auth/shared/providers.dart';
import 'package:ecomerce_project/core/presentation/commons/loading_page.dart';
import 'package:ecomerce_project/core/shared/providers.dart';
import 'package:ecomerce_project/firebase_options.dart';
import 'package:ecomerce_project/home/presentation/screens/home.dart';
import 'package:ecomerce_project/main_view/presentation/main_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() async {
  // final WidgetsBinding widgetsBinding =
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authNotifierProvider);
    final currentUser = ref.watch(firebaseAuthProvider).currentUser;
    return MaterialApp(
      home: authState.when(
        init: () {
          if (currentUser == null) {
            debugPrint('1 authState: $authState');
            return const LoginScreen();
          }
          debugPrint('2 authState: $authState');
          return const MainView();
        },
        success: () {
          debugPrint('3 authState: $authState');
          return const MainView();
        },
        failure: () {
          debugPrint('4 authState: $authState');
          return const LoginScreen();
        },
        loading: () {
          debugPrint('5 authState: $authState');
          return const LoadingPage();
        },
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
