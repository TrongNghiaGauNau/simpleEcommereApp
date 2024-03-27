// import 'package:dartz/dartz.dart';
// import 'package:gimic_sns_mobile/auth/infrastructure/params/forgot_password_params.dart';
// import 'package:gimic_sns_mobile/core/domain/failure.dart';
// import 'package:gimic_sns_mobile/core/infrastructure/http_service.dart';

// class ForgotPasswordRepository {
//   final HttpService _service;

//   ForgotPasswordRepository(this._service);

//   Future<Either<Failure, Unit>> sendRequest(String email) async {
//     final response = await _service.post<Unit>(ForgotPasswordSendRequestParam(email));

//     return response.wrapResult();
//   }

//   Future<Either<Failure, Unit>> validateBirthday(String birthday, String code) async {
//     final response = await _service.post<Unit>(ForgotPasswordBirthdayValidateParam(birthday, code));

//     return response.wrapResult();
//   }

//   Future<Either<Failure, Unit>> submit(
//       String password, String confirmedPassword, String code) async {
//     final response =
//         await _service.put<Unit>(ForgotPasswordSubmitParam(password, confirmedPassword, code));

//     return response.wrapResult();
//   }
// }
