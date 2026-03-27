import 'package:ecom_riverpod/features/auth/data/models/auth_response_model.dart';
import 'package:ecom_riverpod/features/auth/data/models/user_detail_model.dart';

abstract class AuthRemoteDataSource {
  Future<AuthResponseModel> login(String username, String password);

  Future<UserDetailModel> getUser();
}
