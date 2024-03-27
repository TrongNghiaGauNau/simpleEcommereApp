// import 'package:dartz/dartz.dart';
// import 'package:gimic_sns_mobile/auth/infrastructure/models/occupation_model.dart';
// import 'package:gimic_sns_mobile/auth/infrastructure/models/position_model.dart';
// import 'package:gimic_sns_mobile/auth/infrastructure/models/sign_up_request.dart';
// import 'package:gimic_sns_mobile/auth/infrastructure/models/sign_up_request_detail.dart';
// import 'package:gimic_sns_mobile/auth/infrastructure/params/get_occupations_param.dart';
// import 'package:gimic_sns_mobile/auth/infrastructure/params/get_positions_param.dart';
// import 'package:gimic_sns_mobile/auth/infrastructure/params/sign_up_params.dart';
// import 'package:gimic_sns_mobile/core/domain/failure.dart';
// import 'package:gimic_sns_mobile/core/infrastructure/http_service.dart';

// class SignUpRepository {
//   final HttpService _service;

//   SignUpRepository(this._service);

//   Future<Either<Failure, Unit>> request(String email) async {
//     final result = await _service.post<Unit>(SignUpRequestParam(email));

//     return result.wrapResult();
//   }

//   Future<Either<Failure, SignUpRequestDetailResponse>> getDetail(String code) async {
//     final result = await _service.get<SignUpRequestDetailResponse>(SignUpRequestDetailsParam(code));

//     return result.wrapResult();
//   }

//   Future<Either<Failure, Unit>> signUp(SignUpRequest request) async {
//     final result = await _service.post<Unit>(SignUpParam(request));

//     return result.wrapResult();
//   }

//   Future<Either<Failure, List<Occupation>>> getOccupations() async {
//     final result = await _service.get<List<Occupation>>(GetOccupationsParam());
//     return result.wrapResult();
//   }

//   Future<Either<Failure, List<Position>>> getPositions() async {
//     final result = await _service.get<List<Position>>(GetPositionsParam());

//     return result.wrapResult();
//   }
// }
