// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserDetailModel {

 int get id; String get firstName; String get lastName; String get maidenName; int get age; String get gender; String get email; String get phone; String get username; String get password; String get birthDate; String get image; String get bloodGroup; double get height; double get weight; String get eyeColor; HairModel get hair; String get ip; AddressModel get address; String get macAddress; String get university; BankModel get bank; CompanyModel get company; String get ein; String get ssn; String get userAgent; CryptoModel get crypto; String get role;
/// Create a copy of UserDetailModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserDetailModelCopyWith<UserDetailModel> get copyWith => _$UserDetailModelCopyWithImpl<UserDetailModel>(this as UserDetailModel, _$identity);

  /// Serializes this UserDetailModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserDetailModel&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.maidenName, maidenName) || other.maidenName == maidenName)&&(identical(other.age, age) || other.age == age)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.username, username) || other.username == username)&&(identical(other.password, password) || other.password == password)&&(identical(other.birthDate, birthDate) || other.birthDate == birthDate)&&(identical(other.image, image) || other.image == image)&&(identical(other.bloodGroup, bloodGroup) || other.bloodGroup == bloodGroup)&&(identical(other.height, height) || other.height == height)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.eyeColor, eyeColor) || other.eyeColor == eyeColor)&&(identical(other.hair, hair) || other.hair == hair)&&(identical(other.ip, ip) || other.ip == ip)&&(identical(other.address, address) || other.address == address)&&(identical(other.macAddress, macAddress) || other.macAddress == macAddress)&&(identical(other.university, university) || other.university == university)&&(identical(other.bank, bank) || other.bank == bank)&&(identical(other.company, company) || other.company == company)&&(identical(other.ein, ein) || other.ein == ein)&&(identical(other.ssn, ssn) || other.ssn == ssn)&&(identical(other.userAgent, userAgent) || other.userAgent == userAgent)&&(identical(other.crypto, crypto) || other.crypto == crypto)&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,firstName,lastName,maidenName,age,gender,email,phone,username,password,birthDate,image,bloodGroup,height,weight,eyeColor,hair,ip,address,macAddress,university,bank,company,ein,ssn,userAgent,crypto,role]);

@override
String toString() {
  return 'UserDetailModel(id: $id, firstName: $firstName, lastName: $lastName, maidenName: $maidenName, age: $age, gender: $gender, email: $email, phone: $phone, username: $username, password: $password, birthDate: $birthDate, image: $image, bloodGroup: $bloodGroup, height: $height, weight: $weight, eyeColor: $eyeColor, hair: $hair, ip: $ip, address: $address, macAddress: $macAddress, university: $university, bank: $bank, company: $company, ein: $ein, ssn: $ssn, userAgent: $userAgent, crypto: $crypto, role: $role)';
}


}

/// @nodoc
abstract mixin class $UserDetailModelCopyWith<$Res>  {
  factory $UserDetailModelCopyWith(UserDetailModel value, $Res Function(UserDetailModel) _then) = _$UserDetailModelCopyWithImpl;
@useResult
$Res call({
 int id, String firstName, String lastName, String maidenName, int age, String gender, String email, String phone, String username, String password, String birthDate, String image, String bloodGroup, double height, double weight, String eyeColor, HairModel hair, String ip, AddressModel address, String macAddress, String university, BankModel bank, CompanyModel company, String ein, String ssn, String userAgent, CryptoModel crypto, String role
});


$HairModelCopyWith<$Res> get hair;$AddressModelCopyWith<$Res> get address;$BankModelCopyWith<$Res> get bank;$CompanyModelCopyWith<$Res> get company;$CryptoModelCopyWith<$Res> get crypto;

}
/// @nodoc
class _$UserDetailModelCopyWithImpl<$Res>
    implements $UserDetailModelCopyWith<$Res> {
  _$UserDetailModelCopyWithImpl(this._self, this._then);

  final UserDetailModel _self;
  final $Res Function(UserDetailModel) _then;

/// Create a copy of UserDetailModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? firstName = null,Object? lastName = null,Object? maidenName = null,Object? age = null,Object? gender = null,Object? email = null,Object? phone = null,Object? username = null,Object? password = null,Object? birthDate = null,Object? image = null,Object? bloodGroup = null,Object? height = null,Object? weight = null,Object? eyeColor = null,Object? hair = null,Object? ip = null,Object? address = null,Object? macAddress = null,Object? university = null,Object? bank = null,Object? company = null,Object? ein = null,Object? ssn = null,Object? userAgent = null,Object? crypto = null,Object? role = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,maidenName: null == maidenName ? _self.maidenName : maidenName // ignore: cast_nullable_to_non_nullable
as String,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,birthDate: null == birthDate ? _self.birthDate : birthDate // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,bloodGroup: null == bloodGroup ? _self.bloodGroup : bloodGroup // ignore: cast_nullable_to_non_nullable
as String,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as double,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double,eyeColor: null == eyeColor ? _self.eyeColor : eyeColor // ignore: cast_nullable_to_non_nullable
as String,hair: null == hair ? _self.hair : hair // ignore: cast_nullable_to_non_nullable
as HairModel,ip: null == ip ? _self.ip : ip // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as AddressModel,macAddress: null == macAddress ? _self.macAddress : macAddress // ignore: cast_nullable_to_non_nullable
as String,university: null == university ? _self.university : university // ignore: cast_nullable_to_non_nullable
as String,bank: null == bank ? _self.bank : bank // ignore: cast_nullable_to_non_nullable
as BankModel,company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as CompanyModel,ein: null == ein ? _self.ein : ein // ignore: cast_nullable_to_non_nullable
as String,ssn: null == ssn ? _self.ssn : ssn // ignore: cast_nullable_to_non_nullable
as String,userAgent: null == userAgent ? _self.userAgent : userAgent // ignore: cast_nullable_to_non_nullable
as String,crypto: null == crypto ? _self.crypto : crypto // ignore: cast_nullable_to_non_nullable
as CryptoModel,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of UserDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HairModelCopyWith<$Res> get hair {
  
  return $HairModelCopyWith<$Res>(_self.hair, (value) {
    return _then(_self.copyWith(hair: value));
  });
}/// Create a copy of UserDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressModelCopyWith<$Res> get address {
  
  return $AddressModelCopyWith<$Res>(_self.address, (value) {
    return _then(_self.copyWith(address: value));
  });
}/// Create a copy of UserDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BankModelCopyWith<$Res> get bank {
  
  return $BankModelCopyWith<$Res>(_self.bank, (value) {
    return _then(_self.copyWith(bank: value));
  });
}/// Create a copy of UserDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CompanyModelCopyWith<$Res> get company {
  
  return $CompanyModelCopyWith<$Res>(_self.company, (value) {
    return _then(_self.copyWith(company: value));
  });
}/// Create a copy of UserDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CryptoModelCopyWith<$Res> get crypto {
  
  return $CryptoModelCopyWith<$Res>(_self.crypto, (value) {
    return _then(_self.copyWith(crypto: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserDetailModel].
extension UserDetailModelPatterns on UserDetailModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserDetailModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserDetailModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserDetailModel value)  $default,){
final _that = this;
switch (_that) {
case _UserDetailModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserDetailModel value)?  $default,){
final _that = this;
switch (_that) {
case _UserDetailModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String firstName,  String lastName,  String maidenName,  int age,  String gender,  String email,  String phone,  String username,  String password,  String birthDate,  String image,  String bloodGroup,  double height,  double weight,  String eyeColor,  HairModel hair,  String ip,  AddressModel address,  String macAddress,  String university,  BankModel bank,  CompanyModel company,  String ein,  String ssn,  String userAgent,  CryptoModel crypto,  String role)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserDetailModel() when $default != null:
return $default(_that.id,_that.firstName,_that.lastName,_that.maidenName,_that.age,_that.gender,_that.email,_that.phone,_that.username,_that.password,_that.birthDate,_that.image,_that.bloodGroup,_that.height,_that.weight,_that.eyeColor,_that.hair,_that.ip,_that.address,_that.macAddress,_that.university,_that.bank,_that.company,_that.ein,_that.ssn,_that.userAgent,_that.crypto,_that.role);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String firstName,  String lastName,  String maidenName,  int age,  String gender,  String email,  String phone,  String username,  String password,  String birthDate,  String image,  String bloodGroup,  double height,  double weight,  String eyeColor,  HairModel hair,  String ip,  AddressModel address,  String macAddress,  String university,  BankModel bank,  CompanyModel company,  String ein,  String ssn,  String userAgent,  CryptoModel crypto,  String role)  $default,) {final _that = this;
switch (_that) {
case _UserDetailModel():
return $default(_that.id,_that.firstName,_that.lastName,_that.maidenName,_that.age,_that.gender,_that.email,_that.phone,_that.username,_that.password,_that.birthDate,_that.image,_that.bloodGroup,_that.height,_that.weight,_that.eyeColor,_that.hair,_that.ip,_that.address,_that.macAddress,_that.university,_that.bank,_that.company,_that.ein,_that.ssn,_that.userAgent,_that.crypto,_that.role);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String firstName,  String lastName,  String maidenName,  int age,  String gender,  String email,  String phone,  String username,  String password,  String birthDate,  String image,  String bloodGroup,  double height,  double weight,  String eyeColor,  HairModel hair,  String ip,  AddressModel address,  String macAddress,  String university,  BankModel bank,  CompanyModel company,  String ein,  String ssn,  String userAgent,  CryptoModel crypto,  String role)?  $default,) {final _that = this;
switch (_that) {
case _UserDetailModel() when $default != null:
return $default(_that.id,_that.firstName,_that.lastName,_that.maidenName,_that.age,_that.gender,_that.email,_that.phone,_that.username,_that.password,_that.birthDate,_that.image,_that.bloodGroup,_that.height,_that.weight,_that.eyeColor,_that.hair,_that.ip,_that.address,_that.macAddress,_that.university,_that.bank,_that.company,_that.ein,_that.ssn,_that.userAgent,_that.crypto,_that.role);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserDetailModel implements UserDetailModel {
  const _UserDetailModel({required this.id, required this.firstName, required this.lastName, required this.maidenName, required this.age, required this.gender, required this.email, required this.phone, required this.username, required this.password, required this.birthDate, required this.image, required this.bloodGroup, required this.height, required this.weight, required this.eyeColor, required this.hair, required this.ip, required this.address, required this.macAddress, required this.university, required this.bank, required this.company, required this.ein, required this.ssn, required this.userAgent, required this.crypto, required this.role});
  factory _UserDetailModel.fromJson(Map<String, dynamic> json) => _$UserDetailModelFromJson(json);

@override final  int id;
@override final  String firstName;
@override final  String lastName;
@override final  String maidenName;
@override final  int age;
@override final  String gender;
@override final  String email;
@override final  String phone;
@override final  String username;
@override final  String password;
@override final  String birthDate;
@override final  String image;
@override final  String bloodGroup;
@override final  double height;
@override final  double weight;
@override final  String eyeColor;
@override final  HairModel hair;
@override final  String ip;
@override final  AddressModel address;
@override final  String macAddress;
@override final  String university;
@override final  BankModel bank;
@override final  CompanyModel company;
@override final  String ein;
@override final  String ssn;
@override final  String userAgent;
@override final  CryptoModel crypto;
@override final  String role;

/// Create a copy of UserDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserDetailModelCopyWith<_UserDetailModel> get copyWith => __$UserDetailModelCopyWithImpl<_UserDetailModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserDetailModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserDetailModel&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.maidenName, maidenName) || other.maidenName == maidenName)&&(identical(other.age, age) || other.age == age)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.username, username) || other.username == username)&&(identical(other.password, password) || other.password == password)&&(identical(other.birthDate, birthDate) || other.birthDate == birthDate)&&(identical(other.image, image) || other.image == image)&&(identical(other.bloodGroup, bloodGroup) || other.bloodGroup == bloodGroup)&&(identical(other.height, height) || other.height == height)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.eyeColor, eyeColor) || other.eyeColor == eyeColor)&&(identical(other.hair, hair) || other.hair == hair)&&(identical(other.ip, ip) || other.ip == ip)&&(identical(other.address, address) || other.address == address)&&(identical(other.macAddress, macAddress) || other.macAddress == macAddress)&&(identical(other.university, university) || other.university == university)&&(identical(other.bank, bank) || other.bank == bank)&&(identical(other.company, company) || other.company == company)&&(identical(other.ein, ein) || other.ein == ein)&&(identical(other.ssn, ssn) || other.ssn == ssn)&&(identical(other.userAgent, userAgent) || other.userAgent == userAgent)&&(identical(other.crypto, crypto) || other.crypto == crypto)&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,firstName,lastName,maidenName,age,gender,email,phone,username,password,birthDate,image,bloodGroup,height,weight,eyeColor,hair,ip,address,macAddress,university,bank,company,ein,ssn,userAgent,crypto,role]);

@override
String toString() {
  return 'UserDetailModel(id: $id, firstName: $firstName, lastName: $lastName, maidenName: $maidenName, age: $age, gender: $gender, email: $email, phone: $phone, username: $username, password: $password, birthDate: $birthDate, image: $image, bloodGroup: $bloodGroup, height: $height, weight: $weight, eyeColor: $eyeColor, hair: $hair, ip: $ip, address: $address, macAddress: $macAddress, university: $university, bank: $bank, company: $company, ein: $ein, ssn: $ssn, userAgent: $userAgent, crypto: $crypto, role: $role)';
}


}

/// @nodoc
abstract mixin class _$UserDetailModelCopyWith<$Res> implements $UserDetailModelCopyWith<$Res> {
  factory _$UserDetailModelCopyWith(_UserDetailModel value, $Res Function(_UserDetailModel) _then) = __$UserDetailModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String firstName, String lastName, String maidenName, int age, String gender, String email, String phone, String username, String password, String birthDate, String image, String bloodGroup, double height, double weight, String eyeColor, HairModel hair, String ip, AddressModel address, String macAddress, String university, BankModel bank, CompanyModel company, String ein, String ssn, String userAgent, CryptoModel crypto, String role
});


@override $HairModelCopyWith<$Res> get hair;@override $AddressModelCopyWith<$Res> get address;@override $BankModelCopyWith<$Res> get bank;@override $CompanyModelCopyWith<$Res> get company;@override $CryptoModelCopyWith<$Res> get crypto;

}
/// @nodoc
class __$UserDetailModelCopyWithImpl<$Res>
    implements _$UserDetailModelCopyWith<$Res> {
  __$UserDetailModelCopyWithImpl(this._self, this._then);

  final _UserDetailModel _self;
  final $Res Function(_UserDetailModel) _then;

/// Create a copy of UserDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? firstName = null,Object? lastName = null,Object? maidenName = null,Object? age = null,Object? gender = null,Object? email = null,Object? phone = null,Object? username = null,Object? password = null,Object? birthDate = null,Object? image = null,Object? bloodGroup = null,Object? height = null,Object? weight = null,Object? eyeColor = null,Object? hair = null,Object? ip = null,Object? address = null,Object? macAddress = null,Object? university = null,Object? bank = null,Object? company = null,Object? ein = null,Object? ssn = null,Object? userAgent = null,Object? crypto = null,Object? role = null,}) {
  return _then(_UserDetailModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,maidenName: null == maidenName ? _self.maidenName : maidenName // ignore: cast_nullable_to_non_nullable
as String,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,birthDate: null == birthDate ? _self.birthDate : birthDate // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,bloodGroup: null == bloodGroup ? _self.bloodGroup : bloodGroup // ignore: cast_nullable_to_non_nullable
as String,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as double,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double,eyeColor: null == eyeColor ? _self.eyeColor : eyeColor // ignore: cast_nullable_to_non_nullable
as String,hair: null == hair ? _self.hair : hair // ignore: cast_nullable_to_non_nullable
as HairModel,ip: null == ip ? _self.ip : ip // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as AddressModel,macAddress: null == macAddress ? _self.macAddress : macAddress // ignore: cast_nullable_to_non_nullable
as String,university: null == university ? _self.university : university // ignore: cast_nullable_to_non_nullable
as String,bank: null == bank ? _self.bank : bank // ignore: cast_nullable_to_non_nullable
as BankModel,company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as CompanyModel,ein: null == ein ? _self.ein : ein // ignore: cast_nullable_to_non_nullable
as String,ssn: null == ssn ? _self.ssn : ssn // ignore: cast_nullable_to_non_nullable
as String,userAgent: null == userAgent ? _self.userAgent : userAgent // ignore: cast_nullable_to_non_nullable
as String,crypto: null == crypto ? _self.crypto : crypto // ignore: cast_nullable_to_non_nullable
as CryptoModel,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of UserDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HairModelCopyWith<$Res> get hair {
  
  return $HairModelCopyWith<$Res>(_self.hair, (value) {
    return _then(_self.copyWith(hair: value));
  });
}/// Create a copy of UserDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressModelCopyWith<$Res> get address {
  
  return $AddressModelCopyWith<$Res>(_self.address, (value) {
    return _then(_self.copyWith(address: value));
  });
}/// Create a copy of UserDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BankModelCopyWith<$Res> get bank {
  
  return $BankModelCopyWith<$Res>(_self.bank, (value) {
    return _then(_self.copyWith(bank: value));
  });
}/// Create a copy of UserDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CompanyModelCopyWith<$Res> get company {
  
  return $CompanyModelCopyWith<$Res>(_self.company, (value) {
    return _then(_self.copyWith(company: value));
  });
}/// Create a copy of UserDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CryptoModelCopyWith<$Res> get crypto {
  
  return $CryptoModelCopyWith<$Res>(_self.crypto, (value) {
    return _then(_self.copyWith(crypto: value));
  });
}
}


/// @nodoc
mixin _$HairModel {

 String get color; String get type;
/// Create a copy of HairModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HairModelCopyWith<HairModel> get copyWith => _$HairModelCopyWithImpl<HairModel>(this as HairModel, _$identity);

  /// Serializes this HairModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HairModel&&(identical(other.color, color) || other.color == color)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,color,type);

@override
String toString() {
  return 'HairModel(color: $color, type: $type)';
}


}

/// @nodoc
abstract mixin class $HairModelCopyWith<$Res>  {
  factory $HairModelCopyWith(HairModel value, $Res Function(HairModel) _then) = _$HairModelCopyWithImpl;
@useResult
$Res call({
 String color, String type
});




}
/// @nodoc
class _$HairModelCopyWithImpl<$Res>
    implements $HairModelCopyWith<$Res> {
  _$HairModelCopyWithImpl(this._self, this._then);

  final HairModel _self;
  final $Res Function(HairModel) _then;

/// Create a copy of HairModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? color = null,Object? type = null,}) {
  return _then(_self.copyWith(
color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [HairModel].
extension HairModelPatterns on HairModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HairModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HairModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HairModel value)  $default,){
final _that = this;
switch (_that) {
case _HairModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HairModel value)?  $default,){
final _that = this;
switch (_that) {
case _HairModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String color,  String type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HairModel() when $default != null:
return $default(_that.color,_that.type);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String color,  String type)  $default,) {final _that = this;
switch (_that) {
case _HairModel():
return $default(_that.color,_that.type);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String color,  String type)?  $default,) {final _that = this;
switch (_that) {
case _HairModel() when $default != null:
return $default(_that.color,_that.type);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HairModel implements HairModel {
  const _HairModel({required this.color, required this.type});
  factory _HairModel.fromJson(Map<String, dynamic> json) => _$HairModelFromJson(json);

@override final  String color;
@override final  String type;

/// Create a copy of HairModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HairModelCopyWith<_HairModel> get copyWith => __$HairModelCopyWithImpl<_HairModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HairModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HairModel&&(identical(other.color, color) || other.color == color)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,color,type);

@override
String toString() {
  return 'HairModel(color: $color, type: $type)';
}


}

/// @nodoc
abstract mixin class _$HairModelCopyWith<$Res> implements $HairModelCopyWith<$Res> {
  factory _$HairModelCopyWith(_HairModel value, $Res Function(_HairModel) _then) = __$HairModelCopyWithImpl;
@override @useResult
$Res call({
 String color, String type
});




}
/// @nodoc
class __$HairModelCopyWithImpl<$Res>
    implements _$HairModelCopyWith<$Res> {
  __$HairModelCopyWithImpl(this._self, this._then);

  final _HairModel _self;
  final $Res Function(_HairModel) _then;

/// Create a copy of HairModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? color = null,Object? type = null,}) {
  return _then(_HairModel(
color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$AddressModel {

 String get address; String get city; String get state; String get stateCode; String get postalCode; CoordinatesModel get coordinates; String get country;
/// Create a copy of AddressModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddressModelCopyWith<AddressModel> get copyWith => _$AddressModelCopyWithImpl<AddressModel>(this as AddressModel, _$identity);

  /// Serializes this AddressModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddressModel&&(identical(other.address, address) || other.address == address)&&(identical(other.city, city) || other.city == city)&&(identical(other.state, state) || other.state == state)&&(identical(other.stateCode, stateCode) || other.stateCode == stateCode)&&(identical(other.postalCode, postalCode) || other.postalCode == postalCode)&&(identical(other.coordinates, coordinates) || other.coordinates == coordinates)&&(identical(other.country, country) || other.country == country));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,address,city,state,stateCode,postalCode,coordinates,country);

@override
String toString() {
  return 'AddressModel(address: $address, city: $city, state: $state, stateCode: $stateCode, postalCode: $postalCode, coordinates: $coordinates, country: $country)';
}


}

/// @nodoc
abstract mixin class $AddressModelCopyWith<$Res>  {
  factory $AddressModelCopyWith(AddressModel value, $Res Function(AddressModel) _then) = _$AddressModelCopyWithImpl;
@useResult
$Res call({
 String address, String city, String state, String stateCode, String postalCode, CoordinatesModel coordinates, String country
});


$CoordinatesModelCopyWith<$Res> get coordinates;

}
/// @nodoc
class _$AddressModelCopyWithImpl<$Res>
    implements $AddressModelCopyWith<$Res> {
  _$AddressModelCopyWithImpl(this._self, this._then);

  final AddressModel _self;
  final $Res Function(AddressModel) _then;

/// Create a copy of AddressModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? address = null,Object? city = null,Object? state = null,Object? stateCode = null,Object? postalCode = null,Object? coordinates = null,Object? country = null,}) {
  return _then(_self.copyWith(
address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String,stateCode: null == stateCode ? _self.stateCode : stateCode // ignore: cast_nullable_to_non_nullable
as String,postalCode: null == postalCode ? _self.postalCode : postalCode // ignore: cast_nullable_to_non_nullable
as String,coordinates: null == coordinates ? _self.coordinates : coordinates // ignore: cast_nullable_to_non_nullable
as CoordinatesModel,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of AddressModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CoordinatesModelCopyWith<$Res> get coordinates {
  
  return $CoordinatesModelCopyWith<$Res>(_self.coordinates, (value) {
    return _then(_self.copyWith(coordinates: value));
  });
}
}


/// Adds pattern-matching-related methods to [AddressModel].
extension AddressModelPatterns on AddressModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddressModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddressModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddressModel value)  $default,){
final _that = this;
switch (_that) {
case _AddressModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddressModel value)?  $default,){
final _that = this;
switch (_that) {
case _AddressModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String address,  String city,  String state,  String stateCode,  String postalCode,  CoordinatesModel coordinates,  String country)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddressModel() when $default != null:
return $default(_that.address,_that.city,_that.state,_that.stateCode,_that.postalCode,_that.coordinates,_that.country);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String address,  String city,  String state,  String stateCode,  String postalCode,  CoordinatesModel coordinates,  String country)  $default,) {final _that = this;
switch (_that) {
case _AddressModel():
return $default(_that.address,_that.city,_that.state,_that.stateCode,_that.postalCode,_that.coordinates,_that.country);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String address,  String city,  String state,  String stateCode,  String postalCode,  CoordinatesModel coordinates,  String country)?  $default,) {final _that = this;
switch (_that) {
case _AddressModel() when $default != null:
return $default(_that.address,_that.city,_that.state,_that.stateCode,_that.postalCode,_that.coordinates,_that.country);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AddressModel implements AddressModel {
  const _AddressModel({required this.address, required this.city, required this.state, required this.stateCode, required this.postalCode, required this.coordinates, required this.country});
  factory _AddressModel.fromJson(Map<String, dynamic> json) => _$AddressModelFromJson(json);

@override final  String address;
@override final  String city;
@override final  String state;
@override final  String stateCode;
@override final  String postalCode;
@override final  CoordinatesModel coordinates;
@override final  String country;

/// Create a copy of AddressModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddressModelCopyWith<_AddressModel> get copyWith => __$AddressModelCopyWithImpl<_AddressModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AddressModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddressModel&&(identical(other.address, address) || other.address == address)&&(identical(other.city, city) || other.city == city)&&(identical(other.state, state) || other.state == state)&&(identical(other.stateCode, stateCode) || other.stateCode == stateCode)&&(identical(other.postalCode, postalCode) || other.postalCode == postalCode)&&(identical(other.coordinates, coordinates) || other.coordinates == coordinates)&&(identical(other.country, country) || other.country == country));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,address,city,state,stateCode,postalCode,coordinates,country);

@override
String toString() {
  return 'AddressModel(address: $address, city: $city, state: $state, stateCode: $stateCode, postalCode: $postalCode, coordinates: $coordinates, country: $country)';
}


}

/// @nodoc
abstract mixin class _$AddressModelCopyWith<$Res> implements $AddressModelCopyWith<$Res> {
  factory _$AddressModelCopyWith(_AddressModel value, $Res Function(_AddressModel) _then) = __$AddressModelCopyWithImpl;
@override @useResult
$Res call({
 String address, String city, String state, String stateCode, String postalCode, CoordinatesModel coordinates, String country
});


@override $CoordinatesModelCopyWith<$Res> get coordinates;

}
/// @nodoc
class __$AddressModelCopyWithImpl<$Res>
    implements _$AddressModelCopyWith<$Res> {
  __$AddressModelCopyWithImpl(this._self, this._then);

  final _AddressModel _self;
  final $Res Function(_AddressModel) _then;

/// Create a copy of AddressModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? address = null,Object? city = null,Object? state = null,Object? stateCode = null,Object? postalCode = null,Object? coordinates = null,Object? country = null,}) {
  return _then(_AddressModel(
address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String,stateCode: null == stateCode ? _self.stateCode : stateCode // ignore: cast_nullable_to_non_nullable
as String,postalCode: null == postalCode ? _self.postalCode : postalCode // ignore: cast_nullable_to_non_nullable
as String,coordinates: null == coordinates ? _self.coordinates : coordinates // ignore: cast_nullable_to_non_nullable
as CoordinatesModel,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of AddressModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CoordinatesModelCopyWith<$Res> get coordinates {
  
  return $CoordinatesModelCopyWith<$Res>(_self.coordinates, (value) {
    return _then(_self.copyWith(coordinates: value));
  });
}
}


/// @nodoc
mixin _$CoordinatesModel {

 double get lat; double get lng;
/// Create a copy of CoordinatesModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CoordinatesModelCopyWith<CoordinatesModel> get copyWith => _$CoordinatesModelCopyWithImpl<CoordinatesModel>(this as CoordinatesModel, _$identity);

  /// Serializes this CoordinatesModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoordinatesModel&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,lat,lng);

@override
String toString() {
  return 'CoordinatesModel(lat: $lat, lng: $lng)';
}


}

/// @nodoc
abstract mixin class $CoordinatesModelCopyWith<$Res>  {
  factory $CoordinatesModelCopyWith(CoordinatesModel value, $Res Function(CoordinatesModel) _then) = _$CoordinatesModelCopyWithImpl;
@useResult
$Res call({
 double lat, double lng
});




}
/// @nodoc
class _$CoordinatesModelCopyWithImpl<$Res>
    implements $CoordinatesModelCopyWith<$Res> {
  _$CoordinatesModelCopyWithImpl(this._self, this._then);

  final CoordinatesModel _self;
  final $Res Function(CoordinatesModel) _then;

/// Create a copy of CoordinatesModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? lat = null,Object? lng = null,}) {
  return _then(_self.copyWith(
lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,lng: null == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [CoordinatesModel].
extension CoordinatesModelPatterns on CoordinatesModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CoordinatesModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CoordinatesModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CoordinatesModel value)  $default,){
final _that = this;
switch (_that) {
case _CoordinatesModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CoordinatesModel value)?  $default,){
final _that = this;
switch (_that) {
case _CoordinatesModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double lat,  double lng)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CoordinatesModel() when $default != null:
return $default(_that.lat,_that.lng);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double lat,  double lng)  $default,) {final _that = this;
switch (_that) {
case _CoordinatesModel():
return $default(_that.lat,_that.lng);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double lat,  double lng)?  $default,) {final _that = this;
switch (_that) {
case _CoordinatesModel() when $default != null:
return $default(_that.lat,_that.lng);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CoordinatesModel implements CoordinatesModel {
  const _CoordinatesModel({required this.lat, required this.lng});
  factory _CoordinatesModel.fromJson(Map<String, dynamic> json) => _$CoordinatesModelFromJson(json);

@override final  double lat;
@override final  double lng;

/// Create a copy of CoordinatesModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CoordinatesModelCopyWith<_CoordinatesModel> get copyWith => __$CoordinatesModelCopyWithImpl<_CoordinatesModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CoordinatesModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CoordinatesModel&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,lat,lng);

@override
String toString() {
  return 'CoordinatesModel(lat: $lat, lng: $lng)';
}


}

/// @nodoc
abstract mixin class _$CoordinatesModelCopyWith<$Res> implements $CoordinatesModelCopyWith<$Res> {
  factory _$CoordinatesModelCopyWith(_CoordinatesModel value, $Res Function(_CoordinatesModel) _then) = __$CoordinatesModelCopyWithImpl;
@override @useResult
$Res call({
 double lat, double lng
});




}
/// @nodoc
class __$CoordinatesModelCopyWithImpl<$Res>
    implements _$CoordinatesModelCopyWith<$Res> {
  __$CoordinatesModelCopyWithImpl(this._self, this._then);

  final _CoordinatesModel _self;
  final $Res Function(_CoordinatesModel) _then;

/// Create a copy of CoordinatesModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? lat = null,Object? lng = null,}) {
  return _then(_CoordinatesModel(
lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,lng: null == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$BankModel {

 String get cardExpire; String get cardNumber; String get cardType; String get currency; String get iban;
/// Create a copy of BankModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BankModelCopyWith<BankModel> get copyWith => _$BankModelCopyWithImpl<BankModel>(this as BankModel, _$identity);

  /// Serializes this BankModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BankModel&&(identical(other.cardExpire, cardExpire) || other.cardExpire == cardExpire)&&(identical(other.cardNumber, cardNumber) || other.cardNumber == cardNumber)&&(identical(other.cardType, cardType) || other.cardType == cardType)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.iban, iban) || other.iban == iban));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cardExpire,cardNumber,cardType,currency,iban);

@override
String toString() {
  return 'BankModel(cardExpire: $cardExpire, cardNumber: $cardNumber, cardType: $cardType, currency: $currency, iban: $iban)';
}


}

/// @nodoc
abstract mixin class $BankModelCopyWith<$Res>  {
  factory $BankModelCopyWith(BankModel value, $Res Function(BankModel) _then) = _$BankModelCopyWithImpl;
@useResult
$Res call({
 String cardExpire, String cardNumber, String cardType, String currency, String iban
});




}
/// @nodoc
class _$BankModelCopyWithImpl<$Res>
    implements $BankModelCopyWith<$Res> {
  _$BankModelCopyWithImpl(this._self, this._then);

  final BankModel _self;
  final $Res Function(BankModel) _then;

/// Create a copy of BankModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cardExpire = null,Object? cardNumber = null,Object? cardType = null,Object? currency = null,Object? iban = null,}) {
  return _then(_self.copyWith(
cardExpire: null == cardExpire ? _self.cardExpire : cardExpire // ignore: cast_nullable_to_non_nullable
as String,cardNumber: null == cardNumber ? _self.cardNumber : cardNumber // ignore: cast_nullable_to_non_nullable
as String,cardType: null == cardType ? _self.cardType : cardType // ignore: cast_nullable_to_non_nullable
as String,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,iban: null == iban ? _self.iban : iban // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [BankModel].
extension BankModelPatterns on BankModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BankModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BankModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BankModel value)  $default,){
final _that = this;
switch (_that) {
case _BankModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BankModel value)?  $default,){
final _that = this;
switch (_that) {
case _BankModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String cardExpire,  String cardNumber,  String cardType,  String currency,  String iban)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BankModel() when $default != null:
return $default(_that.cardExpire,_that.cardNumber,_that.cardType,_that.currency,_that.iban);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String cardExpire,  String cardNumber,  String cardType,  String currency,  String iban)  $default,) {final _that = this;
switch (_that) {
case _BankModel():
return $default(_that.cardExpire,_that.cardNumber,_that.cardType,_that.currency,_that.iban);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String cardExpire,  String cardNumber,  String cardType,  String currency,  String iban)?  $default,) {final _that = this;
switch (_that) {
case _BankModel() when $default != null:
return $default(_that.cardExpire,_that.cardNumber,_that.cardType,_that.currency,_that.iban);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BankModel implements BankModel {
  const _BankModel({required this.cardExpire, required this.cardNumber, required this.cardType, required this.currency, required this.iban});
  factory _BankModel.fromJson(Map<String, dynamic> json) => _$BankModelFromJson(json);

@override final  String cardExpire;
@override final  String cardNumber;
@override final  String cardType;
@override final  String currency;
@override final  String iban;

/// Create a copy of BankModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BankModelCopyWith<_BankModel> get copyWith => __$BankModelCopyWithImpl<_BankModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BankModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BankModel&&(identical(other.cardExpire, cardExpire) || other.cardExpire == cardExpire)&&(identical(other.cardNumber, cardNumber) || other.cardNumber == cardNumber)&&(identical(other.cardType, cardType) || other.cardType == cardType)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.iban, iban) || other.iban == iban));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cardExpire,cardNumber,cardType,currency,iban);

@override
String toString() {
  return 'BankModel(cardExpire: $cardExpire, cardNumber: $cardNumber, cardType: $cardType, currency: $currency, iban: $iban)';
}


}

/// @nodoc
abstract mixin class _$BankModelCopyWith<$Res> implements $BankModelCopyWith<$Res> {
  factory _$BankModelCopyWith(_BankModel value, $Res Function(_BankModel) _then) = __$BankModelCopyWithImpl;
@override @useResult
$Res call({
 String cardExpire, String cardNumber, String cardType, String currency, String iban
});




}
/// @nodoc
class __$BankModelCopyWithImpl<$Res>
    implements _$BankModelCopyWith<$Res> {
  __$BankModelCopyWithImpl(this._self, this._then);

  final _BankModel _self;
  final $Res Function(_BankModel) _then;

/// Create a copy of BankModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cardExpire = null,Object? cardNumber = null,Object? cardType = null,Object? currency = null,Object? iban = null,}) {
  return _then(_BankModel(
cardExpire: null == cardExpire ? _self.cardExpire : cardExpire // ignore: cast_nullable_to_non_nullable
as String,cardNumber: null == cardNumber ? _self.cardNumber : cardNumber // ignore: cast_nullable_to_non_nullable
as String,cardType: null == cardType ? _self.cardType : cardType // ignore: cast_nullable_to_non_nullable
as String,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,iban: null == iban ? _self.iban : iban // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$CompanyModel {

 String get department; String get name; String get title; AddressModel get address;
/// Create a copy of CompanyModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompanyModelCopyWith<CompanyModel> get copyWith => _$CompanyModelCopyWithImpl<CompanyModel>(this as CompanyModel, _$identity);

  /// Serializes this CompanyModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompanyModel&&(identical(other.department, department) || other.department == department)&&(identical(other.name, name) || other.name == name)&&(identical(other.title, title) || other.title == title)&&(identical(other.address, address) || other.address == address));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,department,name,title,address);

@override
String toString() {
  return 'CompanyModel(department: $department, name: $name, title: $title, address: $address)';
}


}

/// @nodoc
abstract mixin class $CompanyModelCopyWith<$Res>  {
  factory $CompanyModelCopyWith(CompanyModel value, $Res Function(CompanyModel) _then) = _$CompanyModelCopyWithImpl;
@useResult
$Res call({
 String department, String name, String title, AddressModel address
});


$AddressModelCopyWith<$Res> get address;

}
/// @nodoc
class _$CompanyModelCopyWithImpl<$Res>
    implements $CompanyModelCopyWith<$Res> {
  _$CompanyModelCopyWithImpl(this._self, this._then);

  final CompanyModel _self;
  final $Res Function(CompanyModel) _then;

/// Create a copy of CompanyModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? department = null,Object? name = null,Object? title = null,Object? address = null,}) {
  return _then(_self.copyWith(
department: null == department ? _self.department : department // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as AddressModel,
  ));
}
/// Create a copy of CompanyModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressModelCopyWith<$Res> get address {
  
  return $AddressModelCopyWith<$Res>(_self.address, (value) {
    return _then(_self.copyWith(address: value));
  });
}
}


/// Adds pattern-matching-related methods to [CompanyModel].
extension CompanyModelPatterns on CompanyModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CompanyModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CompanyModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CompanyModel value)  $default,){
final _that = this;
switch (_that) {
case _CompanyModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CompanyModel value)?  $default,){
final _that = this;
switch (_that) {
case _CompanyModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String department,  String name,  String title,  AddressModel address)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CompanyModel() when $default != null:
return $default(_that.department,_that.name,_that.title,_that.address);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String department,  String name,  String title,  AddressModel address)  $default,) {final _that = this;
switch (_that) {
case _CompanyModel():
return $default(_that.department,_that.name,_that.title,_that.address);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String department,  String name,  String title,  AddressModel address)?  $default,) {final _that = this;
switch (_that) {
case _CompanyModel() when $default != null:
return $default(_that.department,_that.name,_that.title,_that.address);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CompanyModel implements CompanyModel {
  const _CompanyModel({required this.department, required this.name, required this.title, required this.address});
  factory _CompanyModel.fromJson(Map<String, dynamic> json) => _$CompanyModelFromJson(json);

@override final  String department;
@override final  String name;
@override final  String title;
@override final  AddressModel address;

/// Create a copy of CompanyModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompanyModelCopyWith<_CompanyModel> get copyWith => __$CompanyModelCopyWithImpl<_CompanyModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CompanyModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CompanyModel&&(identical(other.department, department) || other.department == department)&&(identical(other.name, name) || other.name == name)&&(identical(other.title, title) || other.title == title)&&(identical(other.address, address) || other.address == address));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,department,name,title,address);

@override
String toString() {
  return 'CompanyModel(department: $department, name: $name, title: $title, address: $address)';
}


}

/// @nodoc
abstract mixin class _$CompanyModelCopyWith<$Res> implements $CompanyModelCopyWith<$Res> {
  factory _$CompanyModelCopyWith(_CompanyModel value, $Res Function(_CompanyModel) _then) = __$CompanyModelCopyWithImpl;
@override @useResult
$Res call({
 String department, String name, String title, AddressModel address
});


@override $AddressModelCopyWith<$Res> get address;

}
/// @nodoc
class __$CompanyModelCopyWithImpl<$Res>
    implements _$CompanyModelCopyWith<$Res> {
  __$CompanyModelCopyWithImpl(this._self, this._then);

  final _CompanyModel _self;
  final $Res Function(_CompanyModel) _then;

/// Create a copy of CompanyModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? department = null,Object? name = null,Object? title = null,Object? address = null,}) {
  return _then(_CompanyModel(
department: null == department ? _self.department : department // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as AddressModel,
  ));
}

/// Create a copy of CompanyModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressModelCopyWith<$Res> get address {
  
  return $AddressModelCopyWith<$Res>(_self.address, (value) {
    return _then(_self.copyWith(address: value));
  });
}
}


/// @nodoc
mixin _$CryptoModel {

 String get coin; String get wallet; String get network;
/// Create a copy of CryptoModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CryptoModelCopyWith<CryptoModel> get copyWith => _$CryptoModelCopyWithImpl<CryptoModel>(this as CryptoModel, _$identity);

  /// Serializes this CryptoModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CryptoModel&&(identical(other.coin, coin) || other.coin == coin)&&(identical(other.wallet, wallet) || other.wallet == wallet)&&(identical(other.network, network) || other.network == network));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,coin,wallet,network);

@override
String toString() {
  return 'CryptoModel(coin: $coin, wallet: $wallet, network: $network)';
}


}

/// @nodoc
abstract mixin class $CryptoModelCopyWith<$Res>  {
  factory $CryptoModelCopyWith(CryptoModel value, $Res Function(CryptoModel) _then) = _$CryptoModelCopyWithImpl;
@useResult
$Res call({
 String coin, String wallet, String network
});




}
/// @nodoc
class _$CryptoModelCopyWithImpl<$Res>
    implements $CryptoModelCopyWith<$Res> {
  _$CryptoModelCopyWithImpl(this._self, this._then);

  final CryptoModel _self;
  final $Res Function(CryptoModel) _then;

/// Create a copy of CryptoModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? coin = null,Object? wallet = null,Object? network = null,}) {
  return _then(_self.copyWith(
coin: null == coin ? _self.coin : coin // ignore: cast_nullable_to_non_nullable
as String,wallet: null == wallet ? _self.wallet : wallet // ignore: cast_nullable_to_non_nullable
as String,network: null == network ? _self.network : network // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CryptoModel].
extension CryptoModelPatterns on CryptoModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CryptoModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CryptoModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CryptoModel value)  $default,){
final _that = this;
switch (_that) {
case _CryptoModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CryptoModel value)?  $default,){
final _that = this;
switch (_that) {
case _CryptoModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String coin,  String wallet,  String network)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CryptoModel() when $default != null:
return $default(_that.coin,_that.wallet,_that.network);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String coin,  String wallet,  String network)  $default,) {final _that = this;
switch (_that) {
case _CryptoModel():
return $default(_that.coin,_that.wallet,_that.network);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String coin,  String wallet,  String network)?  $default,) {final _that = this;
switch (_that) {
case _CryptoModel() when $default != null:
return $default(_that.coin,_that.wallet,_that.network);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CryptoModel implements CryptoModel {
  const _CryptoModel({required this.coin, required this.wallet, required this.network});
  factory _CryptoModel.fromJson(Map<String, dynamic> json) => _$CryptoModelFromJson(json);

@override final  String coin;
@override final  String wallet;
@override final  String network;

/// Create a copy of CryptoModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CryptoModelCopyWith<_CryptoModel> get copyWith => __$CryptoModelCopyWithImpl<_CryptoModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CryptoModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CryptoModel&&(identical(other.coin, coin) || other.coin == coin)&&(identical(other.wallet, wallet) || other.wallet == wallet)&&(identical(other.network, network) || other.network == network));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,coin,wallet,network);

@override
String toString() {
  return 'CryptoModel(coin: $coin, wallet: $wallet, network: $network)';
}


}

/// @nodoc
abstract mixin class _$CryptoModelCopyWith<$Res> implements $CryptoModelCopyWith<$Res> {
  factory _$CryptoModelCopyWith(_CryptoModel value, $Res Function(_CryptoModel) _then) = __$CryptoModelCopyWithImpl;
@override @useResult
$Res call({
 String coin, String wallet, String network
});




}
/// @nodoc
class __$CryptoModelCopyWithImpl<$Res>
    implements _$CryptoModelCopyWith<$Res> {
  __$CryptoModelCopyWithImpl(this._self, this._then);

  final _CryptoModel _self;
  final $Res Function(_CryptoModel) _then;

/// Create a copy of CryptoModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? coin = null,Object? wallet = null,Object? network = null,}) {
  return _then(_CryptoModel(
coin: null == coin ? _self.coin : coin // ignore: cast_nullable_to_non_nullable
as String,wallet: null == wallet ? _self.wallet : wallet // ignore: cast_nullable_to_non_nullable
as String,network: null == network ? _self.network : network // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
