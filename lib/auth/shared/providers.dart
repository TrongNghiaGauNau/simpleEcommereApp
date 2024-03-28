import 'package:ecomerce_project/auth/application/auth_notifier.dart';
import 'package:ecomerce_project/auth/infrastructure/models/auth_state.dart';
import 'package:ecomerce_project/core/shared/providers.dart';
import 'package:riverpod/riverpod.dart';

final authNotifierProvider =
    StateNotifierProvider<AuthNotifer, AuthState>((ref) {
  return AuthNotifer(
    ref.watch(firebaseAuthProvider),
    ref.watch(userRepositoryProvider),
  );
});
