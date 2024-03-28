import 'package:ecomerce_project/auth/application/authenticator.dart';
import 'package:ecomerce_project/core/infrastructure/http_service.dart';
import 'package:ecomerce_project/product_detail/infrastructure/product_repository.dart';
import 'package:ecomerce_project/user_profile/infrastructure/user_repository.dart';
import 'package:riverpod/riverpod.dart';

final firebaseAuthProvider = Provider((_) => Authenticator());
final httpService = Provider((_) => HttpService());
final userRepositoryProvider = Provider((_) => UserRepsitory());
final productRepositoryProvider =
    Provider((ref) => ProductRepository(ref.watch(httpService)));
