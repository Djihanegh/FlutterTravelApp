// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Place _$$_PlaceFromJson(Map<String, dynamic> json) => _$_Place(
      name: json['name'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      image: json['image'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$_PlaceToJson(_$_Place instance) => <String, dynamic>{
      'name': instance.name,
      'rating': instance.rating,
      'image': instance.image,
      'description': instance.description,
    };
