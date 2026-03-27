import 'package:ecom_riverpod/features/auth/data/models/auth_response_model.dart';

abstract class AuthRemoteDataSource {
  Future<AuthResponseModel> login(String username, String password);

  Future<AuthResponseModel> getUser();
}
