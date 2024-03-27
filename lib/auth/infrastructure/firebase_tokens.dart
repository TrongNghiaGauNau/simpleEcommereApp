import 'package:freezed_annotation/freezed_annotation.dart';

part 'firebase_tokens.freezed.dart';
part 'firebase_tokens.g.dart';

@freezed
class FirebaseTokens with _$FirebaseTokens {
  const factory FirebaseTokens({
    required String f_auth_token,
  }) = _FirebaseTokens;

  factory FirebaseTokens.fromJson(Map<String, dynamic> json) => _$FirebaseTokensFromJson(json);
}
