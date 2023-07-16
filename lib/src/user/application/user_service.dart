import 'package:alex_astudillo_erp/app/services/local_data_service.dart';
import 'package:alex_astudillo_erp/src/common.dart';
import 'package:alex_astudillo_erp/src/user/domain/i_user_repository.dart';

class UserService {
  const UserService(
    this._repository,
    this._localData,
  );

  final IUserRepository _repository;
  final LocalDataService _localData;

  /// Allow authenticate in the app and save the encrypted token.
  Future<void> signIn(String username, String password) async {
    final DefaultResponse response = await _repository.signIn(
      username,
      password,
    );
    if (response.statusCode != 200) {
      throw HttpException(code: response.statusCode, message: response.message);
    }
    await _localData.saveJWT(response.data as String);
  }
}
