import 'package:alex_astudillo_erp/src/common.dart';
import 'package:alex_astudillo_erp/src/user/domain/i_user_repository.dart';
import 'package:http/http.dart';

class UserHttpRepository implements IUserRepository {
  const UserHttpRepository(this.client);

  final HttpBaseClient client;

  @override
  Future<DefaultResponse> get current async {
    final Response response = await client.get(
      Uri.parse('${client.baseV1URL}/user/current'),
    );
    return DefaultResponse.fromJson(await client.parseFromJson(response.body));
  }

  @override
  Future<DefaultResponse> signIn(String username, String password) async {
    final Response response = await client.post(
      Uri.parse('${client.baseV1URL}/user/sign-in'),
      body: await client.parseToJson({
        'username': username,
        'password': password,
      }),
    );
    return DefaultResponse.fromJson(await client.parseFromJson(response.body));
  }
}
