// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destination.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Destination _$$_DestinationFromJson(Map<String, dynamic> json) =>
    _$_Destination(
      name: json['name'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      image: json['image'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$_DestinationToJson(_$_Destination instance) =>
    <String, dynamic>{
      'name': instance.name,
      'rating': instance.rating,
      'image': instance.image,
      'id': instance.id,
    };
