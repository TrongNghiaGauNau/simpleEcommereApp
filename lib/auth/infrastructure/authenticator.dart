// import 'package:dartz/dartz.dart';
// import 'package:dio/dio.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';
// import 'package:flutter_udid/flutter_udid.dart';
// import 'package:gimic_sns_mobile/core/infrastructure/network/try_catch_wrapper.dart';
// import 'package:gimic_sns_mobile/auth/infrastructure/tokens.dart';
// import 'package:gimic_sns_mobile/core/domain/failure.dart';
// import 'package:gimic_sns_mobile/core/infrastructure/model/api_path.dart';
// import 'package:gimic_sns_mobile/core/infrastructure/model/remote_response.dart';
// import 'package:gimic_sns_mobile/core/infrastructure/storage_keys.dart';
// import 'package:gimic_sns_mobile/settings/detail_setting/login_setting/domain/login_setting_model.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class Authenticator {
//   final FlutterSecureStorage _storage;
//   final FirebaseAuth _firebaseAuth;
//   final Dio _dio;
//   final SharedPreferences _prefs;

//   Authenticator(this._storage, this._firebaseAuth, this._dio, this._prefs);

//   Future<bool> isSignedIn() async {
//     final accessToken = await _storage.read(key: accessTokenKey);
//     return accessToken != null;
//   }

//   Future<String?> isJoinedSpace() => _storage.read(key: spaceIdKey);

//   Future<bool> isSignedInFirebaseAuth() async =>
//       _firebaseAuth.currentUser != null;

//   Future<RemoteResponse<Tokens>> _login(
//     String username,
//     String password,
//     LoginSettingType setting,
//     CancelToken cancelToken,
//   ) async {
//     final loginMethod = setting == LoginSettingType.biometric
//         ? LoginSettingType.auto.name
//         : setting.name;
//     return await tcWrapper<Tokens>(
//       call: _dio.post(
//         APIPath.login,
//         data: {
//           'email': username,
//           'password': password,
//           'login_method': loginMethod,
//         },
//         cancelToken: cancelToken,
//       ),
//     );
//   }

//   Future<Either<Failure, Unit>> login(
//     String username,
//     String password,
//     LoginSettingType setting,
//     CancelToken token,
//   ) async {
//     final result = await _login(username, password, setting, token);
//     return result.wrapResult().fold((l) => left(l), (tokens) async {
//       if (tokens.accessToken != null) {
//         await _storage.write(key: accessTokenKey, value: tokens.accessToken);
//       }

//       if (tokens.refreshToken != null) {
//         await _storage.write(key: refreshTokenKey, value: tokens.refreshToken);
//       }

//       return right(unit);
//     });
//   }

//   Future<String?> _getDeviceId() async {
//     return await FlutterUdid.udid;
//   }

//   Future<Either<Failure, Unit>> logout() async {
//     try {
//       final refreshToken = await _storage.read(key: refreshTokenKey);
//       final accessToken = await _storage.read(key: accessTokenKey);
//       final deviceId = await _getDeviceId();

//       final result = await tcWrapper<Unit>(
//           call: _dio.post(
//         APIPath.logout,
//         options: Options(
//             headers: {
//               'Authorization': 'Bearer $accessToken',
//               'Content-Type': 'application/json',
//             },
//             receiveTimeout: const Duration(seconds: 30),
//             sendTimeout: const Duration(seconds: 30)),
//         data: {'refresh_token': refreshToken, 'device_id': deviceId},
//       ));
//       return result.wrapResult().fold(
//         (failure) {
//           return failure.when(
//               noConnection: () => left(failure),
//               error: (errorCode, _, __) {
//                 //Case refresh token
//                 if (errorCode != null && errorCode.startsWith('401')) {
//                   return right(unit);
//                 } else {
//                   return left(failure);
//                 }
//               });
//         },
//         (r) => right(unit),
//       ).fold((l) => left(l), (r) async {
//         await clearAndLogoutFromFirebase();
//         return right(unit);
//       });
//     } catch (e) {
//       return left(Failure.error(null, '$e'));
//     }
//   }

//   Future<void> clearAndLogoutFromFirebase() async {
//     final useBio = _prefs.getBool(useBiometricsKey) ?? false;
//     await _firebaseAuth.signOut();
//     final username = await _storage.read(key: usernameKey);
//     final password = await _storage.read(key: passwordKey);
//     final lastEmail = await _storage.read(key: lastEmailKey);
//     await _storage.deleteAll();
//     if (useBio) {
//       await Future.wait([
//         _storage.write(key: usernameKey, value: username),
//         _storage.write(key: passwordKey, value: password)
//       ]);
//     }
//     await _storage.write(key: lastEmailKey, value: lastEmail);
//   }

//   Future<RemoteResponse<Tokens>> refreshToken([bool useBio = false]) async {
//     final refreshToken = await _storage.read(key: refreshTokenKey);
//     final accessToken = await _storage.read(key: accessTokenKey);
//     final setting = await _storage.read(key: loginSettingsKey);

//     final result = await tcWrapper<Tokens>(
//         call: _dio.post(
//       APIPath.refreshToken,
//       options: Options(
//           headers: {
//             'Authorization': 'Bearer $accessToken',
//             'Content-Type': 'application/json',
//           },
//           receiveTimeout: const Duration(seconds: 30),
//           sendTimeout: const Duration(seconds: 30)),
//       data: {
//         'refresh_token': refreshToken,
//         'login_method': useBio ? LoginSettingType.auto.name : setting,
//       },
//     ));
//     return result.maybeMap(
//         withNewData: (result) async {
//           if (result.data.refreshToken != null) {
//             await _storage.write(
//                 key: refreshTokenKey, value: result.data.refreshToken);
//           }

//           if (result.data.accessToken != null) {
//             await _storage.write(
//                 key: accessTokenKey, value: result.data.accessToken);
//           }
//           return result;
//         },
//         orElse: () => result);
//   }

//   Future<RemoteResponse<Tokens>> spaceToken() async {
//     final spaceId = await _storage.read(key: spaceIdKey);
//     final accessToken = await _storage.read(key: accessTokenKey);
//     final result = await tcWrapper<Tokens>(
//       call: _dio.post(
//         APIPath.spacesToken,
//         options: Options(
//             headers: {
//               'Authorization': 'Bearer $accessToken',
//               'Content-Type': 'application/json',
//             },
//             receiveTimeout: const Duration(seconds: 30),
//             sendTimeout: const Duration(seconds: 30)),
//         data: {'space_id': spaceId},
//       ),
//     );

//     return result.maybeMap(
//         withNewData: (result) async {
//           if (result.data.spaceToken != null) {
//             await _storage.write(
//                 key: spaceTokenKey, value: result.data.spaceToken);
//           }
//           return result;
//         },
//         orElse: () => result);
//   }
// }
