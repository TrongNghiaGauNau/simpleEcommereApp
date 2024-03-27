// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_request_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignUpRequestDetailResponseImpl _$$SignUpRequestDetailResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SignUpRequestDetailResponseImpl(
      code: json['code'] as String,
      email: json['email'] as String,
      isExpired: json['is_expired'] as bool,
    );

Map<String, dynamic> _$$SignUpRequestDetailResponseImplToJson(
        _$SignUpRequestDetailResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'email': instance.email,
      'is_expired': instance.isExpired,
    };
