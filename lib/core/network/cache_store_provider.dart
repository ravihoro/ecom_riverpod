import 'package:dio_cache_interceptor_hive_store/dio_cache_interceptor_hive_store.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_provider/path_provider.dart';

final cacheStoreProvider = FutureProvider<HiveCacheStore>((ref) async {
  final dir = await getTemporaryDirectory();
  return HiveCacheStore(dir.path, hiveBoxName: 'api_cache');
});
