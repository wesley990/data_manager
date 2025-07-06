// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_value_objects.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EmailAddress {

 String get value;
/// Create a copy of EmailAddress
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmailAddressCopyWith<EmailAddress> get copyWith => _$EmailAddressCopyWithImpl<EmailAddress>(this as EmailAddress, _$identity);

  /// Serializes this EmailAddress to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmailAddress&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'EmailAddress(value: $value)';
}


}

/// @nodoc
abstract mixin class $EmailAddressCopyWith<$Res>  {
  factory $EmailAddressCopyWith(EmailAddress value, $Res Function(EmailAddress) _then) = _$EmailAddressCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class _$EmailAddressCopyWithImpl<$Res>
    implements $EmailAddressCopyWith<$Res> {
  _$EmailAddressCopyWithImpl(this._self, this._then);

  final EmailAddress _self;
  final $Res Function(EmailAddress) _then;

/// Create a copy of EmailAddress
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = null,}) {
  return _then(_self.copyWith(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [EmailAddress].
extension EmailAddressPatterns on EmailAddress {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EmailAddress value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmailAddress() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EmailAddress value)  $default,){
final _that = this;
switch (_that) {
case _EmailAddress():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EmailAddress value)?  $default,){
final _that = this;
switch (_that) {
case _EmailAddress() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmailAddress() when $default != null:
return $default(_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String value)  $default,) {final _that = this;
switch (_that) {
case _EmailAddress():
return $default(_that.value);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String value)?  $default,) {final _that = this;
switch (_that) {
case _EmailAddress() when $default != null:
return $default(_that.value);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EmailAddress extends EmailAddress {
  const _EmailAddress(this.value): super._();
  factory _EmailAddress.fromJson(Map<String, dynamic> json) => _$EmailAddressFromJson(json);

@override final  String value;

/// Create a copy of EmailAddress
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmailAddressCopyWith<_EmailAddress> get copyWith => __$EmailAddressCopyWithImpl<_EmailAddress>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EmailAddressToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmailAddress&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'EmailAddress(value: $value)';
}


}

/// @nodoc
abstract mixin class _$EmailAddressCopyWith<$Res> implements $EmailAddressCopyWith<$Res> {
  factory _$EmailAddressCopyWith(_EmailAddress value, $Res Function(_EmailAddress) _then) = __$EmailAddressCopyWithImpl;
@override @useResult
$Res call({
 String value
});




}
/// @nodoc
class __$EmailAddressCopyWithImpl<$Res>
    implements _$EmailAddressCopyWith<$Res> {
  __$EmailAddressCopyWithImpl(this._self, this._then);

  final _EmailAddress _self;
  final $Res Function(_EmailAddress) _then;

/// Create a copy of EmailAddress
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_EmailAddress(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$PhoneNumber {

 String get number; String? get countryCode; String? get extension;
/// Create a copy of PhoneNumber
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PhoneNumberCopyWith<PhoneNumber> get copyWith => _$PhoneNumberCopyWithImpl<PhoneNumber>(this as PhoneNumber, _$identity);

  /// Serializes this PhoneNumber to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PhoneNumber&&(identical(other.number, number) || other.number == number)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.extension, extension) || other.extension == extension));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,number,countryCode,extension);

@override
String toString() {
  return 'PhoneNumber(number: $number, countryCode: $countryCode, extension: $extension)';
}


}

/// @nodoc
abstract mixin class $PhoneNumberCopyWith<$Res>  {
  factory $PhoneNumberCopyWith(PhoneNumber value, $Res Function(PhoneNumber) _then) = _$PhoneNumberCopyWithImpl;
@useResult
$Res call({
 String number, String? countryCode, String? extension
});




}
/// @nodoc
class _$PhoneNumberCopyWithImpl<$Res>
    implements $PhoneNumberCopyWith<$Res> {
  _$PhoneNumberCopyWithImpl(this._self, this._then);

  final PhoneNumber _self;
  final $Res Function(PhoneNumber) _then;

/// Create a copy of PhoneNumber
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? number = null,Object? countryCode = freezed,Object? extension = freezed,}) {
  return _then(_self.copyWith(
number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,countryCode: freezed == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String?,extension: freezed == extension ? _self.extension : extension // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PhoneNumber].
extension PhoneNumberPatterns on PhoneNumber {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PhoneNumber value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PhoneNumber() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PhoneNumber value)  $default,){
final _that = this;
switch (_that) {
case _PhoneNumber():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PhoneNumber value)?  $default,){
final _that = this;
switch (_that) {
case _PhoneNumber() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String number,  String? countryCode,  String? extension)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PhoneNumber() when $default != null:
return $default(_that.number,_that.countryCode,_that.extension);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String number,  String? countryCode,  String? extension)  $default,) {final _that = this;
switch (_that) {
case _PhoneNumber():
return $default(_that.number,_that.countryCode,_that.extension);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String number,  String? countryCode,  String? extension)?  $default,) {final _that = this;
switch (_that) {
case _PhoneNumber() when $default != null:
return $default(_that.number,_that.countryCode,_that.extension);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PhoneNumber extends PhoneNumber {
  const _PhoneNumber({required this.number, this.countryCode, this.extension}): super._();
  factory _PhoneNumber.fromJson(Map<String, dynamic> json) => _$PhoneNumberFromJson(json);

@override final  String number;
@override final  String? countryCode;
@override final  String? extension;

/// Create a copy of PhoneNumber
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PhoneNumberCopyWith<_PhoneNumber> get copyWith => __$PhoneNumberCopyWithImpl<_PhoneNumber>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PhoneNumberToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PhoneNumber&&(identical(other.number, number) || other.number == number)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.extension, extension) || other.extension == extension));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,number,countryCode,extension);

@override
String toString() {
  return 'PhoneNumber(number: $number, countryCode: $countryCode, extension: $extension)';
}


}

/// @nodoc
abstract mixin class _$PhoneNumberCopyWith<$Res> implements $PhoneNumberCopyWith<$Res> {
  factory _$PhoneNumberCopyWith(_PhoneNumber value, $Res Function(_PhoneNumber) _then) = __$PhoneNumberCopyWithImpl;
@override @useResult
$Res call({
 String number, String? countryCode, String? extension
});




}
/// @nodoc
class __$PhoneNumberCopyWithImpl<$Res>
    implements _$PhoneNumberCopyWith<$Res> {
  __$PhoneNumberCopyWithImpl(this._self, this._then);

  final _PhoneNumber _self;
  final $Res Function(_PhoneNumber) _then;

/// Create a copy of PhoneNumber
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? number = null,Object? countryCode = freezed,Object? extension = freezed,}) {
  return _then(_PhoneNumber(
number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,countryCode: freezed == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String?,extension: freezed == extension ? _self.extension : extension // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Address {

 String get street; String get city; String get country; String? get state; String? get postalCode; double? get latitude; double? get longitude;
/// Create a copy of Address
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddressCopyWith<Address> get copyWith => _$AddressCopyWithImpl<Address>(this as Address, _$identity);

  /// Serializes this Address to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Address&&(identical(other.street, street) || other.street == street)&&(identical(other.city, city) || other.city == city)&&(identical(other.country, country) || other.country == country)&&(identical(other.state, state) || other.state == state)&&(identical(other.postalCode, postalCode) || other.postalCode == postalCode)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,street,city,country,state,postalCode,latitude,longitude);

@override
String toString() {
  return 'Address(street: $street, city: $city, country: $country, state: $state, postalCode: $postalCode, latitude: $latitude, longitude: $longitude)';
}


}

/// @nodoc
abstract mixin class $AddressCopyWith<$Res>  {
  factory $AddressCopyWith(Address value, $Res Function(Address) _then) = _$AddressCopyWithImpl;
@useResult
$Res call({
 String street, String city, String country, String? state, String? postalCode, double? latitude, double? longitude
});




}
/// @nodoc
class _$AddressCopyWithImpl<$Res>
    implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._self, this._then);

  final Address _self;
  final $Res Function(Address) _then;

/// Create a copy of Address
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? street = null,Object? city = null,Object? country = null,Object? state = freezed,Object? postalCode = freezed,Object? latitude = freezed,Object? longitude = freezed,}) {
  return _then(_self.copyWith(
street: null == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String?,postalCode: freezed == postalCode ? _self.postalCode : postalCode // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [Address].
extension AddressPatterns on Address {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Address value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Address() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Address value)  $default,){
final _that = this;
switch (_that) {
case _Address():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Address value)?  $default,){
final _that = this;
switch (_that) {
case _Address() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String street,  String city,  String country,  String? state,  String? postalCode,  double? latitude,  double? longitude)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Address() when $default != null:
return $default(_that.street,_that.city,_that.country,_that.state,_that.postalCode,_that.latitude,_that.longitude);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String street,  String city,  String country,  String? state,  String? postalCode,  double? latitude,  double? longitude)  $default,) {final _that = this;
switch (_that) {
case _Address():
return $default(_that.street,_that.city,_that.country,_that.state,_that.postalCode,_that.latitude,_that.longitude);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String street,  String city,  String country,  String? state,  String? postalCode,  double? latitude,  double? longitude)?  $default,) {final _that = this;
switch (_that) {
case _Address() when $default != null:
return $default(_that.street,_that.city,_that.country,_that.state,_that.postalCode,_that.latitude,_that.longitude);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Address extends Address {
  const _Address({required this.street, required this.city, required this.country, this.state, this.postalCode, this.latitude, this.longitude}): super._();
  factory _Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);

@override final  String street;
@override final  String city;
@override final  String country;
@override final  String? state;
@override final  String? postalCode;
@override final  double? latitude;
@override final  double? longitude;

/// Create a copy of Address
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddressCopyWith<_Address> get copyWith => __$AddressCopyWithImpl<_Address>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AddressToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Address&&(identical(other.street, street) || other.street == street)&&(identical(other.city, city) || other.city == city)&&(identical(other.country, country) || other.country == country)&&(identical(other.state, state) || other.state == state)&&(identical(other.postalCode, postalCode) || other.postalCode == postalCode)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,street,city,country,state,postalCode,latitude,longitude);

@override
String toString() {
  return 'Address(street: $street, city: $city, country: $country, state: $state, postalCode: $postalCode, latitude: $latitude, longitude: $longitude)';
}


}

/// @nodoc
abstract mixin class _$AddressCopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory _$AddressCopyWith(_Address value, $Res Function(_Address) _then) = __$AddressCopyWithImpl;
@override @useResult
$Res call({
 String street, String city, String country, String? state, String? postalCode, double? latitude, double? longitude
});




}
/// @nodoc
class __$AddressCopyWithImpl<$Res>
    implements _$AddressCopyWith<$Res> {
  __$AddressCopyWithImpl(this._self, this._then);

  final _Address _self;
  final $Res Function(_Address) _then;

/// Create a copy of Address
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? street = null,Object? city = null,Object? country = null,Object? state = freezed,Object? postalCode = freezed,Object? latitude = freezed,Object? longitude = freezed,}) {
  return _then(_Address(
street: null == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String?,postalCode: freezed == postalCode ? _self.postalCode : postalCode // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}


/// @nodoc
mixin _$ContactInfo {

 String get contactName; String get companyName; PhoneNumber? get phone; EmailAddress? get email; Address? get address;
/// Create a copy of ContactInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContactInfoCopyWith<ContactInfo> get copyWith => _$ContactInfoCopyWithImpl<ContactInfo>(this as ContactInfo, _$identity);

  /// Serializes this ContactInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContactInfo&&(identical(other.contactName, contactName) || other.contactName == contactName)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email)&&(identical(other.address, address) || other.address == address));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,contactName,companyName,phone,email,address);

@override
String toString() {
  return 'ContactInfo(contactName: $contactName, companyName: $companyName, phone: $phone, email: $email, address: $address)';
}


}

/// @nodoc
abstract mixin class $ContactInfoCopyWith<$Res>  {
  factory $ContactInfoCopyWith(ContactInfo value, $Res Function(ContactInfo) _then) = _$ContactInfoCopyWithImpl;
@useResult
$Res call({
 String contactName, String companyName, PhoneNumber? phone, EmailAddress? email, Address? address
});


$PhoneNumberCopyWith<$Res>? get phone;$EmailAddressCopyWith<$Res>? get email;$AddressCopyWith<$Res>? get address;

}
/// @nodoc
class _$ContactInfoCopyWithImpl<$Res>
    implements $ContactInfoCopyWith<$Res> {
  _$ContactInfoCopyWithImpl(this._self, this._then);

  final ContactInfo _self;
  final $Res Function(ContactInfo) _then;

/// Create a copy of ContactInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? contactName = null,Object? companyName = null,Object? phone = freezed,Object? email = freezed,Object? address = freezed,}) {
  return _then(_self.copyWith(
contactName: null == contactName ? _self.contactName : contactName // ignore: cast_nullable_to_non_nullable
as String,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as PhoneNumber?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as EmailAddress?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as Address?,
  ));
}
/// Create a copy of ContactInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PhoneNumberCopyWith<$Res>? get phone {
    if (_self.phone == null) {
    return null;
  }

  return $PhoneNumberCopyWith<$Res>(_self.phone!, (value) {
    return _then(_self.copyWith(phone: value));
  });
}/// Create a copy of ContactInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmailAddressCopyWith<$Res>? get email {
    if (_self.email == null) {
    return null;
  }

  return $EmailAddressCopyWith<$Res>(_self.email!, (value) {
    return _then(_self.copyWith(email: value));
  });
}/// Create a copy of ContactInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressCopyWith<$Res>? get address {
    if (_self.address == null) {
    return null;
  }

  return $AddressCopyWith<$Res>(_self.address!, (value) {
    return _then(_self.copyWith(address: value));
  });
}
}


/// Adds pattern-matching-related methods to [ContactInfo].
extension ContactInfoPatterns on ContactInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ContactInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ContactInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ContactInfo value)  $default,){
final _that = this;
switch (_that) {
case _ContactInfo():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ContactInfo value)?  $default,){
final _that = this;
switch (_that) {
case _ContactInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String contactName,  String companyName,  PhoneNumber? phone,  EmailAddress? email,  Address? address)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ContactInfo() when $default != null:
return $default(_that.contactName,_that.companyName,_that.phone,_that.email,_that.address);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String contactName,  String companyName,  PhoneNumber? phone,  EmailAddress? email,  Address? address)  $default,) {final _that = this;
switch (_that) {
case _ContactInfo():
return $default(_that.contactName,_that.companyName,_that.phone,_that.email,_that.address);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String contactName,  String companyName,  PhoneNumber? phone,  EmailAddress? email,  Address? address)?  $default,) {final _that = this;
switch (_that) {
case _ContactInfo() when $default != null:
return $default(_that.contactName,_that.companyName,_that.phone,_that.email,_that.address);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ContactInfo extends ContactInfo {
  const _ContactInfo({required this.contactName, required this.companyName, this.phone, this.email, this.address}): super._();
  factory _ContactInfo.fromJson(Map<String, dynamic> json) => _$ContactInfoFromJson(json);

@override final  String contactName;
@override final  String companyName;
@override final  PhoneNumber? phone;
@override final  EmailAddress? email;
@override final  Address? address;

/// Create a copy of ContactInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ContactInfoCopyWith<_ContactInfo> get copyWith => __$ContactInfoCopyWithImpl<_ContactInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ContactInfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ContactInfo&&(identical(other.contactName, contactName) || other.contactName == contactName)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email)&&(identical(other.address, address) || other.address == address));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,contactName,companyName,phone,email,address);

@override
String toString() {
  return 'ContactInfo(contactName: $contactName, companyName: $companyName, phone: $phone, email: $email, address: $address)';
}


}

/// @nodoc
abstract mixin class _$ContactInfoCopyWith<$Res> implements $ContactInfoCopyWith<$Res> {
  factory _$ContactInfoCopyWith(_ContactInfo value, $Res Function(_ContactInfo) _then) = __$ContactInfoCopyWithImpl;
@override @useResult
$Res call({
 String contactName, String companyName, PhoneNumber? phone, EmailAddress? email, Address? address
});


@override $PhoneNumberCopyWith<$Res>? get phone;@override $EmailAddressCopyWith<$Res>? get email;@override $AddressCopyWith<$Res>? get address;

}
/// @nodoc
class __$ContactInfoCopyWithImpl<$Res>
    implements _$ContactInfoCopyWith<$Res> {
  __$ContactInfoCopyWithImpl(this._self, this._then);

  final _ContactInfo _self;
  final $Res Function(_ContactInfo) _then;

/// Create a copy of ContactInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? contactName = null,Object? companyName = null,Object? phone = freezed,Object? email = freezed,Object? address = freezed,}) {
  return _then(_ContactInfo(
contactName: null == contactName ? _self.contactName : contactName // ignore: cast_nullable_to_non_nullable
as String,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as PhoneNumber?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as EmailAddress?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as Address?,
  ));
}

/// Create a copy of ContactInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PhoneNumberCopyWith<$Res>? get phone {
    if (_self.phone == null) {
    return null;
  }

  return $PhoneNumberCopyWith<$Res>(_self.phone!, (value) {
    return _then(_self.copyWith(phone: value));
  });
}/// Create a copy of ContactInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmailAddressCopyWith<$Res>? get email {
    if (_self.email == null) {
    return null;
  }

  return $EmailAddressCopyWith<$Res>(_self.email!, (value) {
    return _then(_self.copyWith(email: value));
  });
}/// Create a copy of ContactInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressCopyWith<$Res>? get address {
    if (_self.address == null) {
    return null;
  }

  return $AddressCopyWith<$Res>(_self.address!, (value) {
    return _then(_self.copyWith(address: value));
  });
}
}

// dart format on
