// import 'package:gimic_sns_mobile/auth/infrastructure/models/sign_up_request.dart';
// import 'package:gimic_sns_mobile/core/infrastructure/interface_param.dart';
// import 'package:gimic_sns_mobile/core/infrastructure/model/api_path.dart';

// class SignUpRequestParam extends IParam {
//   final String email;

//   SignUpRequestParam(this.email);

//   @override
//   Map<String, dynamic> get json => {
//         'email': email,
//       };

//   @override
//   String get link => APIPath.signUpRequest;
// }

// class SignUpRequestDetailsParam extends IParam {
//   final String code;

//   SignUpRequestDetailsParam(this.code);

//   @override
//   Map<String, dynamic> get json => {};

//   @override
//   String get link => '${APIPath.signUpRequestDetail}?signup_request_code=$code';
// }

// class SignUpParam extends IParam {
//   final SignUpRequest request;

//   SignUpParam(this.request);

//   @override
//   Map<String, dynamic> get json => request.toJson();

//   @override
//   String get link => APIPath.signUp;
// }
