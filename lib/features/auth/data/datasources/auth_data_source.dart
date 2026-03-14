import 'package:ecom_riverpod/features/auth/data/models/auth_response_model.dart';

abstract class AuthDataSource {
  Future<AuthResponseModel> login(String username, String password);
}
