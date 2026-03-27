import 'package:ecom_riverpod/core/domain/entities/user_detail.dart';

sealed class AuthState {}

class Authenticated extends AuthState {
  final UserDetail user;

  Authenticated(this.user);
}

class UnAuthenticated extends AuthState {}

class AuthLoading extends AuthState {}
