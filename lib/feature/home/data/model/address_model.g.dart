// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddressModel _$$_AddressModelFromJson(Map<String, dynamic> json) =>
    _$_AddressModel(
      id: json['id'] as int,
      city: json['city'] as String,
      street: json['street'] as String,
      code: json['code'] as int,
      longitude: json['longitude'] as String,
      latitude: json['latitude'] as String,
    );

Map<String, dynamic> _$$_AddressModelToJson(_$_AddressModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'city': instance.city,
      'street': instance.street,
      'code': instance.code,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
    };
