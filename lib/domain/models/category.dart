import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.freezed.dart';

part 'category.g.dart';

@freezed
class Category with _$Category {
  const factory Category({
    final String? name,
    final String? image,
    final String? id,
  }) = _Category;

  static const fromJsonFactory = _$CategoryFromJson;

  factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);
}

