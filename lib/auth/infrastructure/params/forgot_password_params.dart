// import 'package:gimic_sns_mobile/core/infrastructure/interface_param.dart';
// import 'package:gimic_sns_mobile/core/infrastructure/model/api_path.dart';

// class ForgotPasswordSendRequestParam extends IParam {
//   final String email;

//   ForgotPasswordSendRequestParam(this.email);

//   @override
//   get json => {'email': email};

//   @override
//   String get link => APIPath.forgotPasswordSendRequest;
// }

// class ForgotPasswordBirthdayValidateParam extends IParam {
//   final String birthday;
//   final String passwordResettingCode;

//   ForgotPasswordBirthdayValidateParam(this.birthday, this.passwordResettingCode);

//   @override
//   get json => {
//         'birthday': birthday,
//         'password_resetting_code': passwordResettingCode,
//       };

//   @override
//   String get link => APIPath.forgotPasswordBirthdayValidate;
// }

// class ForgotPasswordSubmitParam extends IParam {
//   final String password;
//   final String passwordResettingCode;
//   final String confirmedPassword;

//   ForgotPasswordSubmitParam(this.password, this.confirmedPassword, this.passwordResettingCode);

//   @override
//   get json => {
//         'password_resetting_code': passwordResettingCode,
//         'password': password,
//         'confirmed_password': confirmedPassword
//       };

//   @override
//   String get link => APIPath.forgotPasswordConfirm;
// }
