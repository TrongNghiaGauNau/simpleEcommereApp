// import 'dart:async';

// import 'package:dio/dio.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:gimic_sns_mobile/core/infrastructure/network/try_catch_wrapper.dart';
// import 'package:gimic_sns_mobile/auth/infrastructure/firebase_tokens.dart';
// import 'package:gimic_sns_mobile/auth/infrastructure/tokens.dart';
// import 'package:gimic_sns_mobile/core/infrastructure/model/api_path.dart';
// import 'package:gimic_sns_mobile/core/infrastructure/model/remote_response.dart';
// import 'package:gimic_sns_mobile/space/infrastructure/model/user_model.dart';

// class AuthenticationService {
//   final Dio _client;
//   final FirebaseAuth _firebaseAuth;

//   AuthenticationService(this._client, this._firebaseAuth);

//   Future<RemoteResponse<Tokens>> loginSpace(String spaceId, CancelToken cancelToken) async {
//     return await tcWrapper<Tokens>(
//         call: _client.post(
//       APIPath.spacesToken,
//       data: {'space_id': spaceId},
//       cancelToken: cancelToken,
//     ));
//   }

//   Future<RemoteResponse<FirebaseTokens>> getChannelTokens(CancelToken token) async {
//     return await tcWrapper<FirebaseTokens>(
//         call: _client.get(
//       APIPath.channelToken,
//       cancelToken: token,
//     ));
//   }

//   Future<bool> signInWithCustomTokenProvider(String customToken) async {
//     try {
//       final credential = await _firebaseAuth.signInWithCustomToken(customToken);
//       return credential.user != null;
//     } catch (_) {
//       return false;
//     }
//   }

//   Future<RemoteResponse<UserModel>> getCurrentUser() async {
//     return await tcWrapper<UserModel>(
//         call: _client.get(
//       APIPath.currentUser,
//     ));
//   }
// }
