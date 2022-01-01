// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'place.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Place _$PlaceFromJson(Map<String, dynamic> json) {
  return _Place.fromJson(json);
}

/// @nodoc
class _$PlaceTearOff {
  const _$PlaceTearOff();

  _Place call(
      {String? name, double? rating, String? image, String? description}) {
    return _Place(
      name: name,
      rating: rating,
      image: image,
      description: description,
    );
  }

  Place fromJson(Map<String, Object?> json) {
    return Place.fromJson(json);
  }
}

/// @nodoc
const $Place = _$PlaceTearOff();

/// @nodoc
mixin _$Place {
  String? get name => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceCopyWith<Place> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceCopyWith<$Res> {
  factory $PlaceCopyWith(Place value, $Res Function(Place) then) =
      _$PlaceCopyWithImpl<$Res>;
  $Res call({String? name, double? rating, String? image, String? description});
}

/// @nodoc
class _$PlaceCopyWithImpl<$Res> implements $PlaceCopyWith<$Res> {
  _$PlaceCopyWithImpl(this._value, this._then);

  final Place _value;
  // ignore: unused_field
  final $Res Function(Place) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? rating = freezed,
    Object? image = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$PlaceCopyWith<$Res> implements $PlaceCopyWith<$Res> {
  factory _$PlaceCopyWith(_Place value, $Res Function(_Place) then) =
      __$PlaceCopyWithImpl<$Res>;
  @override
  $Res call({String? name, double? rating, String? image, String? description});
}

/// @nodoc
class __$PlaceCopyWithImpl<$Res> extends _$PlaceCopyWithImpl<$Res>
    implements _$PlaceCopyWith<$Res> {
  __$PlaceCopyWithImpl(_Place _value, $Res Function(_Place) _then)
      : super(_value, (v) => _then(v as _Place));

  @override
  _Place get _value => super._value as _Place;

  @override
  $Res call({
    Object? name = freezed,
    Object? rating = freezed,
    Object? image = freezed,
    Object? description = freezed,
  }) {
    return _then(_Place(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Place implements _Place {
  const _$_Place({this.name, this.rating, this.image, this.description});

  factory _$_Place.fromJson(Map<String, dynamic> json) =>
      _$$_PlaceFromJson(json);

  @override
  final String? name;
  @override
  final double? rating;
  @override
  final String? image;
  @override
  final String? description;

  @override
  String toString() {
    return 'Place(name: $name, rating: $rating, image: $image, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Place &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, rating, image, description);

  @JsonKey(ignore: true)
  @override
  _$PlaceCopyWith<_Place> get copyWith =>
      __$PlaceCopyWithImpl<_Place>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlaceToJson(this);
  }
}

abstract class _Place implements Place {
  const factory _Place(
      {String? name,
      double? rating,
      String? image,
      String? description}) = _$_Place;

  factory _Place.fromJson(Map<String, dynamic> json) = _$_Place.fromJson;

  @override
  String? get name;
  @override
  double? get rating;
  @override
  String? get image;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$PlaceCopyWith<_Place> get copyWith => throw _privateConstructorUsedError;
}
