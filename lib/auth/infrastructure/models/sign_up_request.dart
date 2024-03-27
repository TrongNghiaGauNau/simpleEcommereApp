import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_request.freezed.dart';
part 'sign_up_request.g.dart';

@freezed
class SignUpRequest with _$SignUpRequest {
  const SignUpRequest._();
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory SignUpRequest({
    required String email,
    required String password,
    required String signupRequestCode,
    required String phoneNumber,
    required String surname,
    required String givenName,
    required String surnameFurigana,
    required String givenNameFurigana,
    required String gender,
    required String occupation,
    String? occupationCustom,
    required String position,
    String? positionCustom,
    required String licenseId,
    required String birthday,
  }) = _SignUpRequest;

  factory SignUpRequest.fromJson(Map<String, dynamic> json) => _$SignUpRequestFromJson(json);
}
