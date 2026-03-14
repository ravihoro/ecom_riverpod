import 'package:ecom_riverpod/features/auth/data/models/auth_response_model.dart';
import 'package:ecom_riverpod/features/auth/domain/entities/auth_session.dart';
import 'package:ecom_riverpod/features/auth/domain/entities/user.dart';

final mockLoginData = {
  "id": 1,
  "username": "emilys",
  "email": "emily.johnson@x.dummyjson.com",
  "firstName": "Emily",
  "lastName": "Johnson",
  "gender": "female",
  "image": "https://dummyjson.com/icon/emilys/128",
  "accessToken": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9",
  "refreshToken": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9",
};

final mockAuthResponseModel = AuthResponseModel.fromJson(mockLoginData);

final mockAuthSession = mockAuthResponseModel.toEntity();

final mockUser = mockAuthSession.user;
