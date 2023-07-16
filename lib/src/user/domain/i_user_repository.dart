import 'package:alex_astudillo_erp/src/common.dart';

abstract class IUserRepository {
  const IUserRepository();

  /// Get the current user information.
  Future<DefaultResponse> get current;

  /// Authenticate a user.
  Future<DefaultResponse> signIn(String username, String password);
}
