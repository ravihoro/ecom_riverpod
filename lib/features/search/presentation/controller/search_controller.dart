import 'package:ecom_riverpod/features/search/presentation/state/search_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_controller.g.dart';

@riverpod
class SearchController extends _$SearchController {
  @override
  SearchState build() {
    return SearchInitial();
  }

  void searchProduct(String query) {}
}
