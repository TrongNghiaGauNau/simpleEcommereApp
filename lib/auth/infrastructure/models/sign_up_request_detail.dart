import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_request_detail.freezed.dart';
part 'sign_up_request_detail.g.dart';

@freezed
class SignUpRequestDetailResponse with _$SignUpRequestDetailResponse {
  const SignUpRequestDetailResponse._();
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory SignUpRequestDetailResponse({
    required String code,
    required String email,
    required bool isExpired,
  }) = _SignUpRequestDetailResponse;

  factory SignUpRequestDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$SignUpRequestDetailResponseFromJson(json);
}
