import 'package:ecom_riverpod/core/constants/constants.dart';
import 'package:ecom_riverpod/features/auth/data/datasources/auth_local_data_source.dart';
import 'package:ecom_riverpod/features/auth/data/datasources/auth_local_data_source_impl.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockSecureStorage extends Mock implements FlutterSecureStorage {}

void main() {
  late FlutterSecureStorage storage;

  late AuthLocalDataSource dataSource;

  setUpAll(() {
    registerFallbackValue('');
  });

  setUp(() {
    storage = MockSecureStorage();
    dataSource = AuthLocalDataSourceImpl(storage);
  });

  test('should save access and refresh tokens', () async {
    when(
      () => storage.write(
        key: any(named: 'key'),
        value: any(named: 'value'),
      ),
    ).thenAnswer((_) async {});

    await dataSource.saveTokens(
      accessToken: 'accessToken',
      refreshToken: 'refreshToken',
    );

    verify(
      () => storage.write(key: Constants.accessTokenKey, value: 'accessToken'),
    ).called(1);

    verify(
      () =>
          storage.write(key: Constants.refreshTokenKey, value: 'refreshToken'),
    ).called(1);
  });

  test('should return access token', () async {
    when(
      () => storage.read(key: any(named: 'key')),
    ).thenAnswer((_) async => 'accessToken');

    final accessToken = await dataSource.getAccessToken();

    verify(() => storage.read(key: Constants.accessTokenKey)).called(1);

    expect(accessToken, 'accessToken');
  });

  test('should return refresh token', () async {
    when(
      () => storage.read(key: any(named: 'key')),
    ).thenAnswer((_) async => 'refreshToken');

    final refreshToken = await dataSource.getRefreshToken();

    verify(() => storage.read(key: Constants.refreshTokenKey)).called(1);

    expect(refreshToken, 'refreshToken');
  });

  test('should clear storage', () async {
    when(() => storage.deleteAll()).thenAnswer((_) async {});

    await dataSource.clear();

    verify(() => storage.deleteAll()).called(1);
  });
}
