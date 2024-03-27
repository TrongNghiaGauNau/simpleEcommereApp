// import 'package:dartz/dartz.dart';
// import 'package:dio/dio.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';
// import 'package:gimic_sns_mobile/auth/infrastructure/authentication_service.dart';
// import 'package:gimic_sns_mobile/core/domain/failure.dart';
// import 'package:gimic_sns_mobile/core/infrastructure/storage_keys.dart';
// import 'package:gimic_sns_mobile/space/infrastructure/model/user_model.dart';

// class UserRepository {
//   final AuthenticationService _authenticationService;
//   final FlutterSecureStorage _storage;
//   final FirebaseAuth _firebaseAuth;

//   UserRepository(
//     this._authenticationService,
//     this._storage,
//     this._firebaseAuth,
//   );

//   Future<Either<Failure, bool>> loginSpace(String spaceId, CancelToken token) async {
//     final result = await _authenticationService.loginSpace(spaceId, token);
//     return await result.wrapResult().fold(
//       (l) => left(l),
//       (r) async {
//         if (r.spaceToken != null) {
//           await Future.wait([
//             _storage.write(key: spaceIdKey, value: spaceId),
//             _storage.write(key: spaceTokenKey, value: r.spaceToken),
//           ]);
//         }
//         return fetchChannelTokens(token);
//       },
//     );
//   }

//   Future<Either<Failure, bool>> fetchChannelTokens(CancelToken token) async {
//     final result = await _authenticationService.getChannelTokens(token);
//     return result.wrapResult().fold((l) => left(l), (tokens) async {
//       try {
//         final isSuccess = await _signInWithCustomTokenProvider(tokens.f_auth_token);
//         return right(isSuccess);
//       } catch (e) {
//         return left(Failure.error(null, e.toString()));
//       }
//     });
//   }

//   Future<bool> _signInWithCustomTokenProvider(String customToken) async {
//     try {
//       final credential = await _firebaseAuth.signInWithCustomToken(customToken);
//       return credential.user != null;
//     } on FirebaseAuthException {
//       rethrow;
//     }
//   }

//   Future<Either<Failure, UserModel>> getCurrentUser() async {
//     final result = await _authenticationService.getCurrentUser();

//     return result.wrapResult();
//   }
// }
