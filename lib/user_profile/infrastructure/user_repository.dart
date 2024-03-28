import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecomerce_project/core/domain/failure.dart';
import 'package:ecomerce_project/user_profile/infrastructure/models/user.dart';
import 'package:fpdart/fpdart.dart';

class UserRepsitory {
  final _userRepsitory = FirebaseFirestore.instance.collection('users');

  Future<Either<Failure, void>> saveUserData(User user, String uid) async {
    try {
      await _userRepsitory.doc(uid).set(user.toJson());
      return right(null);
    } on FirebaseException catch (e, stackTrace) {
      return left(Failure(
          'user_api: ${e.message ?? 'Some unexpected error occured'}',
          stackTrace));
    } catch (e, stackTrace) {
      return left(Failure(e.toString(), stackTrace));
    }
  }

  Future<User?> getUserData(String uid) async {
    final documents = await _userRepsitory.doc(uid).get();
    final userData = documents.data();
    if (userData != null) {
      final user = User.fromJson(userData);
      return user;
    }
    return null;
  }

  Future<Either<Failure, User>> updateUserData(User user) async {
    try {
      await _userRepsitory.doc(user.uid).update(user.toJson());
      return right(user);
    } on FirebaseException catch (e, stackTrace) {
      return left(Failure(
          'user_api: ${e.message ?? 'Some unexpected error occured'}',
          stackTrace));
    } catch (e, stackTrace) {
      return left(Failure(e.toString(), stackTrace));
    }
  }
}
