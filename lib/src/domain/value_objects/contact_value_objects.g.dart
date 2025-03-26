// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_value_objects.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EmailAddress _$EmailAddressFromJson(Map<String, dynamic> json) =>
    _EmailAddress(json['value'] as String);

Map<String, dynamic> _$EmailAddressToJson(_EmailAddress instance) =>
    <String, dynamic>{'value': instance.value};

_PhoneNumber _$PhoneNumberFromJson(Map<String, dynamic> json) => _PhoneNumber(
  number: json['number'] as String,
  countryCode: json['countryCode'] as String?,
  extension: json['extension'] as String?,
);

Map<String, dynamic> _$PhoneNumberToJson(_PhoneNumber instance) =>
    <String, dynamic>{
      'number': instance.number,
      'countryCode': instance.countryCode,
      'extension': instance.extension,
    };

_Address _$AddressFromJson(Map<String, dynamic> json) => _Address(
  street: json['street'] as String,
  city: json['city'] as String,
  country: json['country'] as String,
  state: json['state'] as String?,
  postalCode: json['postalCode'] as String?,
  latitude: (json['latitude'] as num?)?.toDouble(),
  longitude: (json['longitude'] as num?)?.toDouble(),
);

Map<String, dynamic> _$AddressToJson(_Address instance) => <String, dynamic>{
  'street': instance.street,
  'city': instance.city,
  'country': instance.country,
  'state': instance.state,
  'postalCode': instance.postalCode,
  'latitude': instance.latitude,
  'longitude': instance.longitude,
};

_ContactInfo _$ContactInfoFromJson(Map<String, dynamic> json) => _ContactInfo(
  contactName: json['contactName'] as String,
  companyName: json['companyName'] as String,
  phone:
      json['phone'] == null
          ? null
          : PhoneNumber.fromJson(
            (json['phone'] as Map<String, dynamic>).map(
              (k, e) => MapEntry(k, e as Object),
            ),
          ),
  email:
      json['email'] == null
          ? null
          : EmailAddress.fromJson(
            (json['email'] as Map<String, dynamic>).map(
              (k, e) => MapEntry(k, e as Object),
            ),
          ),
  address:
      json['address'] == null
          ? null
          : Address.fromJson(
            (json['address'] as Map<String, dynamic>).map(
              (k, e) => MapEntry(k, e as Object),
            ),
          ),
);

Map<String, dynamic> _$ContactInfoToJson(_ContactInfo instance) =>
    <String, dynamic>{
      'contactName': instance.contactName,
      'companyName': instance.companyName,
      'phone': instance.phone,
      'email': instance.email,
      'address': instance.address,
    };
