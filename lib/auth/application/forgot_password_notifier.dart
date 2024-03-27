// import 'package:gimic_sns_mobile/auth/infrastructure/forgot_password_repository.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

// class ForgotPasswordNotifier extends StateNotifier<AsyncValue> {
//   ForgotPasswordNotifier(this._repository) : super(const AsyncValue.data(null));

//   final ForgotPasswordRepository _repository;

//   Future<void> sendRequest(String email) async {
//     state = const AsyncLoading();

//     final failureOrSuccess = await _repository.sendRequest(email);

//     state = failureOrSuccess.fold((l) => AsyncError(l, StackTrace.current), (r) => AsyncData(r));
//   }

//   Future<void> validateBirthday(String birthday, String code) async {
//     state = const AsyncLoading();

//     final failureOrSuccess = await _repository.validateBirthday(birthday, code);

//     state = failureOrSuccess.fold((l) => AsyncError(l, StackTrace.current), (r) => AsyncData(r));
//   }

//   Future<void> submit(String password, String confirmedPassword, String code) async {
//     state = const AsyncLoading();

//     final failureOrSuccess = await _repository.submit(password, confirmedPassword, code);

//     state = failureOrSuccess.fold((l) => AsyncError(l, StackTrace.current), (r) => AsyncData(r));
//   }
// }
