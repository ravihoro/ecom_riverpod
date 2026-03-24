import 'package:ecom_riverpod/core/usecase/usecase.dart';
import 'package:ecom_riverpod/features/auth/presentation/state/auth_state.dart';
import 'package:ecom_riverpod/features/auth/providers/auth_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_controller.g.dart';

@riverpod
class AuthController extends _$AuthController {
  @override
  AuthState build() {
    _checkIfLoggedIn();
    return AuthLoading();
  }

  void _checkIfLoggedIn() async {
    final isLoggedInUsecase = ref.read(isLoggedInUseCaseProvider);

    final result = await isLoggedInUsecase(NoParams());

    result.fold(
      (l) => state = UnAuthenticated(),
      (r) => state = Authenticated(),
    );
  }

  void setAuthenticated() {
    state = Authenticated();
  }

  Future<void> signOut() async {
    await ref.read(signOutUseCaseProvider).call(NoParams());

    state = UnAuthenticated();
  }
}
