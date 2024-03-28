import 'package:ecomerce_project/auth/application/authenticator.dart';
import 'package:ecomerce_project/auth/infrastructure/models/auth_state.dart';
import 'package:ecomerce_project/auth/presentation/login/login_screen.dart';
import 'package:ecomerce_project/core/application/utils.dart';
import 'package:ecomerce_project/core/shared/const.dart';
import 'package:ecomerce_project/user_profile/infrastructure/models/user.dart';
import 'package:ecomerce_project/user_profile/infrastructure/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';

class AuthNotifer extends StateNotifier<AuthState> {
  AuthNotifer(this._authenticator, this._userRepsitory)
      : super(const AuthState.init());

  final Authenticator _authenticator;
  final UserRepsitory _userRepsitory;

  void signUp(
      {required String userName,
      required String email,
      required String password,
      required BuildContext context}) async {
    state = const AuthState.loading();
    try {
      //sign up in authenticator
      final respond = await _authenticator.signUpWithEmailAndPassword(
          email: email, password: password);
      respond.fold((l) {
        debugPrint(l.messsage);
        showSnackbar(context, l.messsage);
      }, (uid) async {
        //save user data just signed up to firestore
        final user = User(
          uid: uid,
          email: email,
          userName: userName,
          profilePic: defaultAvatar,
        );
        final res = await _userRepsitory.saveUserData(user, uid);
        res.fold((l) => showSnackbar(context, l.messsage), (r) {
          showSnackbar(context, 'Account created sucessfully! Please login');
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => const LoginScreen(),
          ));
        });
      });
      state = const AuthState.init();
    } catch (e) {
      state = const AuthState.failure();
    }
  }

  void login(
      {required String email,
      required String password,
      required BuildContext context}) async {
    state = const AuthState.loading();
    try {
      final respond = await _authenticator.logInWithEmailAndPassword(
          email: email, password: password);
      respond.fold((l) {
        showSnackbar(context, l.messsage);
        state = const AuthState.failure();
      }, (r) {
        state = const AuthState.success();
      });
    } catch (e) {
      state = const AuthState.failure();
      debugPrint(e.toString());
    }
  }

  void logout(BuildContext context) async {
    try {
      final res = await _authenticator.logOut();
      res.fold((l) => showSnackbar(context, l.messsage),
          (r) => state = const AuthState.failure());
    } catch (e) {
      debugPrint('Error Logout: $e');
    }
  }
}
