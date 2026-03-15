import 'package:ecom_riverpod/core/storage/token_storage.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockSecureStorage extends Mock implements FlutterSecureStorage {}

void main() {
  late FlutterSecureStorage storage;

  late TokenStorage tokenStorage;

  setUp(() {
    storage = MockSecureStorage();
    tokenStorage = TokenStorage(storage);
  });

  test('should save access and refresh tokens', () async {
    when(
      () => storage.write(
        key: any(named: 'key'),
        value: any(named: 'value'),
      ),
    ).thenAnswer((_) async {});

    await tokenStorage.saveTokens(
      accessToken: 'accessToken',
      refreshToken: 'refreshToken',
    );

    verify(
      () =>
          storage.write(key: TokenStorage.accessTokenKey, value: 'accessToken'),
    );

    verify(
      () => storage.write(
        key: TokenStorage.refreshTokenKey,
        value: 'refreshToken',
      ),
    );
  });

  test('should return access token', () async {
    when(
      () => storage.read(key: any(named: 'key')),
    ).thenAnswer((_) async => 'accessToken');

    final accessToken = await tokenStorage.getAccessToken();

    verify(() => storage.read(key: TokenStorage.accessTokenKey)).called(1);

    expect(accessToken, 'accessToken');
  });

  test('should return refresh token', () async {
    when(
      () => storage.read(key: any(named: 'key')),
    ).thenAnswer((_) async => 'refreshToken');

    final refreshToken = await tokenStorage.getRefreshToken();

    verify(() => storage.read(key: TokenStorage.refreshTokenKey)).called(1);

    expect(refreshToken, 'refreshToken');
  });

  test('should clear storage', () async {
    when(() => storage.deleteAll()).thenAnswer((_) async {});

    await tokenStorage.clear();

    verify(() => storage.deleteAll()).called(1);
  });
}
