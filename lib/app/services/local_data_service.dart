import 'package:flutter_secure_storage/flutter_secure_storage.dart';

/// Manage the all local data in the app.
class LocalDataService {
  /// Define a [LocalDataService] class.
  const LocalDataService({
    this.secureStorage = const FlutterSecureStorage(),
  });

  /// The flutter secure storage package.
  final FlutterSecureStorage secureStorage;

  /// The jwt static in the system.
  static String? _jwt;

  /// Save the [jwt] in secure storage.
  Future<void> saveJWT(String? jwt) async {
    _jwt = jwt == null ? null : 'Bearer $jwt';
    return secureStorage.write(key: 'jwt', value: _jwt);
  }

  /// Get the JWT if exists, otherwise null.
  Future<String?> get jwt async {
    return _jwt ??= await secureStorage.read(key: 'jwt');
  }
}
