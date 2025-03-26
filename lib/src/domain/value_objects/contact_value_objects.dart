import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_value_objects.freezed.dart';
part 'contact_value_objects.g.dart';

@freezed
sealed class EmailAddress with _$EmailAddress {
  const factory EmailAddress(String value) = _EmailAddress;

  const EmailAddress._();

  bool isValid() => RegExp(r'^[^@]+@[^@]+\.[^@]+$').hasMatch(value);
  String get domain => value.split('@').last;

  factory EmailAddress.fromJson(Map<String, Object> json) =>
      _$EmailAddressFromJson(json);
}

@freezed
sealed class PhoneNumber with _$PhoneNumber {
  const factory PhoneNumber({
    required String number,
    String? countryCode,
    String? extension,
  }) = _PhoneNumber;

  const PhoneNumber._();

  String get formatted =>
      '${countryCode != null ? '+$countryCode ' : ''}$number${extension != null ? ' x$extension' : ''}';

  factory PhoneNumber.fromJson(Map<String, Object> json) =>
      _$PhoneNumberFromJson(json);
}

@freezed
sealed class Address with _$Address {
  const factory Address({
    required String street,
    required String city,
    required String country,
    String? state,
    String? postalCode,
    double? latitude,
    double? longitude,
  }) = _Address;

  const Address._();

  bool get hasCoordinates => latitude != null && longitude != null;
  String get oneLine =>
      '$street, $city${state != null ? ', $state' : ''}, $country';

  factory Address.fromJson(Map<String, Object> json) => _$AddressFromJson(json);
}

@freezed
sealed class ContactInfo with _$ContactInfo {
  const factory ContactInfo({
    required String contactName,
    required String companyName,
    PhoneNumber? phone,
    EmailAddress? email,
    Address? address,
  }) = _ContactInfo;

  const ContactInfo._();

  bool get hasValidContact => email != null || phone != null;
  String get displayName => companyName;

  factory ContactInfo.fromJson(Map<String, Object> json) =>
      _$ContactInfoFromJson(json);
}
