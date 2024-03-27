// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignUpRequestImpl _$$SignUpRequestImplFromJson(Map<String, dynamic> json) =>
    _$SignUpRequestImpl(
      email: json['email'] as String,
      password: json['password'] as String,
      signupRequestCode: json['signup_request_code'] as String,
      phoneNumber: json['phone_number'] as String,
      surname: json['surname'] as String,
      givenName: json['given_name'] as String,
      surnameFurigana: json['surname_furigana'] as String,
      givenNameFurigana: json['given_name_furigana'] as String,
      gender: json['gender'] as String,
      occupation: json['occupation'] as String,
      occupationCustom: json['occupation_custom'] as String?,
      position: json['position'] as String,
      positionCustom: json['position_custom'] as String?,
      licenseId: json['license_id'] as String,
      birthday: json['birthday'] as String,
    );

Map<String, dynamic> _$$SignUpRequestImplToJson(_$SignUpRequestImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'signup_request_code': instance.signupRequestCode,
      'phone_number': instance.phoneNumber,
      'surname': instance.surname,
      'given_name': instance.givenName,
      'surname_furigana': instance.surnameFurigana,
      'given_name_furigana': instance.givenNameFurigana,
      'gender': instance.gender,
      'occupation': instance.occupation,
      'occupation_custom': instance.occupationCustom,
      'position': instance.position,
      'position_custom': instance.positionCustom,
      'license_id': instance.licenseId,
      'birthday': instance.birthday,
    };
