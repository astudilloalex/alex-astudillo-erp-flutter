import 'package:alex_astudillo_erp/src/common.dart';

abstract class IUserRepository {
  const IUserRepository();

  Future<DefaultResponse> get current;
  Future<DefaultResponse> signIn(String username, String password);
}
