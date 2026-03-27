import 'package:ecom_riverpod/core/usecase/usecase.dart';
import 'package:ecom_riverpod/features/category/presentation/state/categories_state.dart';
import 'package:ecom_riverpod/features/category/providers/categories_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'categories_controller.g.dart';

@riverpod
class CategoriesController extends _$CategoriesController {
  @override
  CategoriesState build() {
    _getCategories();
    return CategoriesLoading();
  }

  Future<void> _getCategories() async {
    final either = await ref
        .read(getCategoriesUseCaseProvider)
        .call(NoParams());

    either.fold(
      (l) {
        state = CategoriesError(l.message);
      },
      (r) {
        state = CategoriesData(r);
      },
    );
  }
}
