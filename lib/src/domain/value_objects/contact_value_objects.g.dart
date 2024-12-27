// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_value_objects.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EmailAddressImpl _$$EmailAddressImplFromJson(Map<String, dynamic> json) =>
    _$EmailAddressImpl(
      json['value'] as String,
    );

Map<String, dynamic> _$$EmailAddressImplToJson(_$EmailAddressImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

_$PhoneNumberImpl _$$PhoneNumberImplFromJson(Map<String, dynamic> json) =>
    _$PhoneNumberImpl(
      number: json['number'] as String,
      countryCode: json['countryCode'] as String?,
      extension: json['extension'] as String?,
    );

Map<String, dynamic> _$$PhoneNumberImplToJson(_$PhoneNumberImpl instance) =>
    <String, dynamic>{
      'number': instance.number,
      'countryCode': instance.countryCode,
      'extension': instance.extension,
    };

_$AddressImpl _$$AddressImplFromJson(Map<String, dynamic> json) =>
    _$AddressImpl(
      street: json['street'] as String,
      city: json['city'] as String,
      country: json['country'] as String,
      state: json['state'] as String?,
      postalCode: json['postalCode'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$AddressImplToJson(_$AddressImpl instance) =>
    <String, dynamic>{
      'street': instance.street,
      'city': instance.city,
      'country': instance.country,
      'state': instance.state,
      'postalCode': instance.postalCode,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };

_$ContactInfoImpl _$$ContactInfoImplFromJson(Map<String, dynamic> json) =>
    _$ContactInfoImpl(
      contactName: json['contactName'] as String,
      companyName: json['companyName'] as String,
      phone: json['phone'] == null
          ? null
          : PhoneNumber.fromJson((json['phone'] as Map<String, dynamic>).map(
              (k, e) => MapEntry(k, e as Object),
            )),
      email: json['email'] == null
          ? null
          : EmailAddress.fromJson((json['email'] as Map<String, dynamic>).map(
              (k, e) => MapEntry(k, e as Object),
            )),
      address: json['address'] == null
          ? null
          : Address.fromJson((json['address'] as Map<String, dynamic>).map(
              (k, e) => MapEntry(k, e as Object),
            )),
    );

Map<String, dynamic> _$$ContactInfoImplToJson(_$ContactInfoImpl instance) =>
    <String, dynamic>{
      'contactName': instance.contactName,
      'companyName': instance.companyName,
      'phone': instance.phone,
      'email': instance.email,
      'address': instance.address,
    };
