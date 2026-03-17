import 'package:ecom_riverpod/features/auth/domain/usecases/sign_in_params.dart';
import 'package:ecom_riverpod/features/auth/presentation/controller/auth_controller.dart';
import 'package:ecom_riverpod/features/auth/presentation/state/sign_in_state.dart';
import 'package:ecom_riverpod/features/auth/providers/auth_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sign_in_controller.g.dart';

@riverpod
class SignInController extends _$SignInController {
  @override
  SignInState build() {
    return SignInInitial();
  }

  Future<void> signIn(String username, String password) async {
    state = SignInLoading();

    final signInEither = await ref
        .read(signInUseCaseProvider)
        .call(SignInParams(username: username, password: password));

    signInEither.fold(
      (l) {
        state = SignInError(l.message);
      },
      (r) {
        ref.read(authControllerProvider.notifier).setAuthenticated();

        state = SignInSuccess();
      },
    );
  }
}
