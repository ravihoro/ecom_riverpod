import 'package:ecom_riverpod/core/domain/entities/user.dart';

sealed class AuthState {}

class Authenticated extends AuthState {
  final User user;

  Authenticated(this.user);
}

class UnAuthenticated extends AuthState {}

class AuthLoading extends AuthState {}
