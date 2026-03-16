import 'package:ecom_riverpod/core/storage/token_storage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

final tokenStorageProvider = Provider<TokenStorage>((ref) {
  final storage = FlutterSecureStorage();

  return TokenStorage(storage);
});
