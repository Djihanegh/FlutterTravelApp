import 'package:freezed_annotation/freezed_annotation.dart';

part 'place.freezed.dart';

part 'place.g.dart';

@freezed
class Place with _$Place {
  const factory Place({
    final String? name,
    final double? rating,
    final String? image,
    final String? description,
  }) = _Place;

  static const fromJsonFactory = _$PlaceFromJson;

  factory Place.fromJson(Map<String, dynamic> json) => _$PlaceFromJson(json);
}

