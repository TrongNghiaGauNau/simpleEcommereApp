import 'package:ecomerce_project/auth/application/authenticator.dart';
import 'package:ecomerce_project/user_profile/infrastructure/user_repository.dart';
import 'package:riverpod/riverpod.dart';

final firebaseAuthProvider = Provider((_) => Authenticator());
final httpService = Provider((_) => null);
final userRepositoryProvider = Provider((_) => UserRepsitory());

