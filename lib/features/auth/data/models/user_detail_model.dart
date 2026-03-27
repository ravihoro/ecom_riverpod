import 'package:ecom_riverpod/core/domain/entities/user_detail.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_detail_model.freezed.dart';
part 'user_detail_model.g.dart';

@freezed
abstract class UserDetailModel with _$UserDetailModel {
  const factory UserDetailModel({
    required int id,
    required String firstName,
    required String lastName,
    required String maidenName,
    required int age,
    required String gender,
    required String email,
    required String phone,
    required String username,
    required String password,
    required String birthDate,
    required String image,
    required String bloodGroup,
    required double height,
    required double weight,
    required String eyeColor,
    required HairModel hair,
    required String ip,
    required AddressModel address,
    required String macAddress,
    required String university,
    required BankModel bank,
    required CompanyModel company,
    required String ein,
    required String ssn,
    required String userAgent,
    required CryptoModel crypto,
    required String role,
  }) = _UserDetailModel;

  factory UserDetailModel.fromJson(Map<String, dynamic> json) =>
      _$UserDetailModelFromJson(json);
}

@freezed
abstract class HairModel with _$HairModel {
  const factory HairModel({required String color, required String type}) =
      _HairModel;

  factory HairModel.fromJson(Map<String, dynamic> json) =>
      _$HairModelFromJson(json);
}

@freezed
abstract class AddressModel with _$AddressModel {
  const factory AddressModel({
    required String address,
    required String city,
    required String state,
    required String stateCode,
    required String postalCode,
    required CoordinatesModel coordinates,
    required String country,
  }) = _AddressModel;

  factory AddressModel.fromJson(Map<String, dynamic> json) =>
      _$AddressModelFromJson(json);
}

@freezed
abstract class CoordinatesModel with _$CoordinatesModel {
  const factory CoordinatesModel({required double lat, required double lng}) =
      _CoordinatesModel;

  factory CoordinatesModel.fromJson(Map<String, dynamic> json) =>
      _$CoordinatesModelFromJson(json);
}

@freezed
abstract class BankModel with _$BankModel {
  const factory BankModel({
    required String cardExpire,
    required String cardNumber,
    required String cardType,
    required String currency,
    required String iban,
  }) = _BankModel;

  factory BankModel.fromJson(Map<String, dynamic> json) =>
      _$BankModelFromJson(json);
}

@freezed
abstract class CompanyModel with _$CompanyModel {
  const factory CompanyModel({
    required String department,
    required String name,
    required String title,
    required AddressModel address,
  }) = _CompanyModel;

  factory CompanyModel.fromJson(Map<String, dynamic> json) =>
      _$CompanyModelFromJson(json);
}

@freezed
abstract class CryptoModel with _$CryptoModel {
  const factory CryptoModel({
    required String coin,
    required String wallet,
    required String network,
  }) = _CryptoModel;

  factory CryptoModel.fromJson(Map<String, dynamic> json) =>
      _$CryptoModelFromJson(json);
}

extension UserDetailModelMapper on UserDetailModel {
  UserDetail toDomain() {
    return UserDetail(
      id: id,
      firstName: firstName,
      lastName: lastName,
      maidenName: maidenName,
      age: age,
      gender: gender,
      email: email,
      phone: phone,
      username: username,
      password: password,
      birthDate: birthDate,
      image: image,
      bloodGroup: bloodGroup,
      height: height,
      weight: weight,
      eyeColor: eyeColor,
      hair: Hair(color: hair.color, type: hair.type),
      ip: ip,
      address: Address(
        address: address.address,
        city: address.city,
        state: address.state,
        stateCode: address.stateCode,
        postalCode: address.postalCode,
        coordinates: Coordinates(
          lat: address.coordinates.lat,
          lng: address.coordinates.lng,
        ),
        country: address.country,
      ),
      macAddress: macAddress,
      university: university,
      bank: Bank(
        cardExpire: bank.cardExpire,
        cardNumber: bank.cardNumber,
        cardType: bank.cardType,
        currency: bank.currency,
        iban: bank.iban,
      ),
      company: Company(
        department: company.department,
        name: company.name,
        title: company.title,
        address: Address(
          address: company.address.address,
          city: company.address.city,
          state: company.address.state,
          stateCode: company.address.stateCode,
          postalCode: company.address.postalCode,
          coordinates: Coordinates(
            lat: company.address.coordinates.lat,
            lng: company.address.coordinates.lng,
          ),
          country: company.address.country,
        ),
      ),
      ein: ein,
      ssn: ssn,
      userAgent: userAgent,
      crypto: Crypto(
        coin: crypto.coin,
        wallet: crypto.wallet,
        network: crypto.network,
      ),
      role: role,
    );
  }
}
