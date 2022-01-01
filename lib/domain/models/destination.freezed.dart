// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'destination.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Destination _$DestinationFromJson(Map<String, dynamic> json) {
  return _Destination.fromJson(json);
}

/// @nodoc
class _$DestinationTearOff {
  const _$DestinationTearOff();

  _Destination call({String? name, double? rating, String? image, String? id}) {
    return _Destination(
      name: name,
      rating: rating,
      image: image,
      id: id,
    );
  }

  Destination fromJson(Map<String, Object?> json) {
    return Destination.fromJson(json);
  }
}

/// @nodoc
const $Destination = _$DestinationTearOff();

/// @nodoc
mixin _$Destination {
  String? get name => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DestinationCopyWith<Destination> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DestinationCopyWith<$Res> {
  factory $DestinationCopyWith(
          Destination value, $Res Function(Destination) then) =
      _$DestinationCopyWithImpl<$Res>;
  $Res call({String? name, double? rating, String? image, String? id});
}

/// @nodoc
class _$DestinationCopyWithImpl<$Res> implements $DestinationCopyWith<$Res> {
  _$DestinationCopyWithImpl(this._value, this._then);

  final Destination _value;
  // ignore: unused_field
  final $Res Function(Destination) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? rating = freezed,
    Object? image = freezed,
    Object? id = freezed,
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
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$DestinationCopyWith<$Res>
    implements $DestinationCopyWith<$Res> {
  factory _$DestinationCopyWith(
          _Destination value, $Res Function(_Destination) then) =
      __$DestinationCopyWithImpl<$Res>;
  @override
  $Res call({String? name, double? rating, String? image, String? id});
}

/// @nodoc
class __$DestinationCopyWithImpl<$Res> extends _$DestinationCopyWithImpl<$Res>
    implements _$DestinationCopyWith<$Res> {
  __$DestinationCopyWithImpl(
      _Destination _value, $Res Function(_Destination) _then)
      : super(_value, (v) => _then(v as _Destination));

  @override
  _Destination get _value => super._value as _Destination;

  @override
  $Res call({
    Object? name = freezed,
    Object? rating = freezed,
    Object? image = freezed,
    Object? id = freezed,
  }) {
    return _then(_Destination(
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
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Destination implements _Destination {
  const _$_Destination({this.name, this.rating, this.image, this.id});

  factory _$_Destination.fromJson(Map<String, dynamic> json) =>
      _$$_DestinationFromJson(json);

  @override
  final String? name;
  @override
  final double? rating;
  @override
  final String? image;
  @override
  final String? id;

  @override
  String toString() {
    return 'Destination(name: $name, rating: $rating, image: $image, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Destination &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, rating, image, id);

  @JsonKey(ignore: true)
  @override
  _$DestinationCopyWith<_Destination> get copyWith =>
      __$DestinationCopyWithImpl<_Destination>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DestinationToJson(this);
  }
}

abstract class _Destination implements Destination {
  const factory _Destination(
      {String? name,
      double? rating,
      String? image,
      String? id}) = _$_Destination;

  factory _Destination.fromJson(Map<String, dynamic> json) =
      _$_Destination.fromJson;

  @override
  String? get name;
  @override
  double? get rating;
  @override
  String? get image;
  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$DestinationCopyWith<_Destination> get copyWith =>
      throw _privateConstructorUsedError;
}
