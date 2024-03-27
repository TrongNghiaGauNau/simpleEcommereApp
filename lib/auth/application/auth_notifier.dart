// import 'dart:async';
// import 'package:auto_route/auto_route.dart';
// import 'package:dartz/dartz.dart';
// import 'package:dio/dio.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:gimic_sns_mobile/auth/infrastructure/authenticator.dart';
// import 'package:gimic_sns_mobile/core/domain/failure.dart';
// import 'package:gimic_sns_mobile/settings/detail_setting/login_setting/domain/login_setting_model.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

// part 'auth_notifier.freezed.dart';

// @freezed
// class AuthState with _$AuthState {
//   const AuthState._();
//   const factory AuthState.init() = _AuthInit;
//   const factory AuthState.ready() = _AuthReady;
//   const factory AuthState.space() = _Space;
//   const factory AuthState.authenticated(PageRouteInfo routeInfo) = _Authenticated;
//   const factory AuthState.unauthenticated({bool? isLogout}) = _Unauthenticated;
// }

// class AuthNotifier extends StateNotifier<AuthState> {
//   AuthNotifier(this._authenticator) : super(const AuthState.init());

//   final Authenticator _authenticator;

//   void updateAuthState(AuthState newState) => state = newState;

//   Future<bool> get hasAccessToken => _authenticator.isSignedIn();
//   Future<String?> get spaceId => _authenticator.isJoinedSpace();

//   Future<Either<Failure, void>> login(
//       String username, String password, LoginSettingType setting, CancelToken cancelToken) async {
//     return await _authenticator.login(username, password, setting, cancelToken);
//   }

//   Future<Either<Failure, Unit>> logout([bool forceLogout = true]) async {
//     final isSignedIn = await _authenticator.isSignedIn();
//     Either<Failure, Unit> failureOrSuccess;
//     if (isSignedIn) {
//       failureOrSuccess = await _authenticator.logout();
//       if (forceLogout) {
//         await failureOrSuccess.fold(
//             (l) async => _authenticator.clearAndLogoutFromFirebase(), (r) {});
//         state = const AuthState.unauthenticated(isLogout: true);
//       } else {
//         failureOrSuccess.fold((l) => null, (r) {
//           state = const AuthState.unauthenticated(isLogout: true);
//         });
//       }
//     } else {
//       state = const AuthState.unauthenticated(isLogout: true);
//       failureOrSuccess = left(const Failure.error(null, null));
//     }
//     return failureOrSuccess;
//   }

//   Future<bool> refreshToken([bool useBio = false]) async {
//     final result = await _authenticator.refreshToken(useBio);

//     return result.maybeWhen(withNewData: (_) => true, orElse: () => false);
//   }

//   Future<bool> spaceToken() async {
//     final result = await _authenticator.spaceToken();

//     return result.maybeWhen(withNewData: (_) => true, orElse: () => false);
//   }
// }
