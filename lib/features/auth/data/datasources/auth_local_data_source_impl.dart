import 'package:ecom_riverpod/features/auth/data/datasources/auth_local_data_source.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthLocalDataSourceImpl extends AuthLocalDataSource {
  final FlutterSecureStorage _storage;

  AuthLocalDataSourceImpl(this._storage);

  static const accessTokenKey = 'access_token';
  static const refreshTokenKey = 'refresh_token';

  @override
  Future<void> clear() async {
    await _storage.deleteAll();
  }

  @override
  Future<String?> getAccessToken() async {
    return await _storage.read(key: accessTokenKey);
  }

  @override
  Future<String?> getRefreshToken() async {
    return await _storage.read(key: refreshTokenKey);
  }

  @override
  Future<void> saveTokens({
    required String accessToken,
    required String refreshToken,
  }) async {
    await _storage.write(key: accessTokenKey, value: accessToken);
    await _storage.write(key: refreshTokenKey, value: refreshToken);
  }
}
