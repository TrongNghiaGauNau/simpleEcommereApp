// import 'package:gimic_sns_mobile/auth/infrastructure/models/sign_up_request.dart';
// import 'package:gimic_sns_mobile/auth/infrastructure/sign_up_repository.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

// const emailIsNotConfirmText = '__not_confirm__';

// class SignUpNotifier extends StateNotifier<AsyncValue> {
//   SignUpNotifier(this._repository) : super(const AsyncData(null));

//   final SignUpRepository _repository;

//   Future<void> request(String email) async {
//     state = const AsyncLoading();
//     final failureOrSuccess = await _repository.request(email);

//     state = failureOrSuccess.fold((l) => AsyncError(l, StackTrace.current), (r) => AsyncData(r));
//   }

//   Future<void> getDetail(String code) async {
//     state = const AsyncLoading();
//     final failureOrSuccess = await _repository.getDetail(code);

//     failureOrSuccess.fold((l) => state = AsyncError(l, StackTrace.current), (r) {
//       if (!r.isExpired) {
//         state = AsyncData(r);
//       } else {
//         state = AsyncError(emailIsNotConfirmText, StackTrace.current);
//       }
//     });
//   }

//   Future<void> signUp(SignUpRequest request) async {
//     state = const AsyncLoading();

//     final failureOrSuccess = await _repository.signUp(request);

//     state = failureOrSuccess.fold((l) => AsyncError(l, StackTrace.current), (r) => AsyncData(r));
//   }
// }
