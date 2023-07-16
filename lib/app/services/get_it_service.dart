import 'package:alex_astudillo_erp/app/services/local_data_service.dart';
import 'package:alex_astudillo_erp/src/common.dart';
import 'package:alex_astudillo_erp/src/user/application/user_service.dart';
import 'package:alex_astudillo_erp/src/user/domain/i_user_repository.dart';
import 'package:alex_astudillo_erp/src/user/infrastructure/user_http_repository.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart';

GetIt getIt = GetIt.instance;

void setupGetIt() {
  const LocalDataService localData = LocalDataService();
  final HttpBaseClient httpClient = HttpBaseClient(Client(), localData);

  // Register all repositories.
  getIt.registerLazySingleton<IUserRepository>(
    () => UserHttpRepository(httpClient),
  );

  // Register all services.
  getIt.registerFactory(
    () => UserService(getIt<IUserRepository>(), localData),
  );
}
