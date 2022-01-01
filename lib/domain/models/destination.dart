import 'package:freezed_annotation/freezed_annotation.dart';

part 'destination.freezed.dart';

part 'destination.g.dart';

@freezed
class Destination with _$Destination {
  const factory Destination({
    final String? name,
    final double? rating,
    final String? image,
    final String? id,
  }) = _Destination;

  static const fromJsonFactory = _$DestinationFromJson;

  factory Destination.fromJson(Map<String, dynamic> json) => _$DestinationFromJson(json);
}

