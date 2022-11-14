// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'img_assets.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ImgAssets _$ImgAssetsFromJson(Map<String, dynamic> json) {
  return _ImgAssets.fromJson(json);
}

/// @nodoc
mixin _$ImgAssets {
  String get icon => throw _privateConstructorUsedError;
  String get banner => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImgAssetsCopyWith<ImgAssets> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImgAssetsCopyWith<$Res> {
  factory $ImgAssetsCopyWith(ImgAssets value, $Res Function(ImgAssets) then) =
      _$ImgAssetsCopyWithImpl<$Res, ImgAssets>;
  @useResult
  $Res call({String icon, String banner});
}

/// @nodoc
class _$ImgAssetsCopyWithImpl<$Res, $Val extends ImgAssets>
    implements $ImgAssetsCopyWith<$Res> {
  _$ImgAssetsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = null,
    Object? banner = null,
  }) {
    return _then(_value.copyWith(
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      banner: null == banner
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ImgAssetsCopyWith<$Res> implements $ImgAssetsCopyWith<$Res> {
  factory _$$_ImgAssetsCopyWith(
          _$_ImgAssets value, $Res Function(_$_ImgAssets) then) =
      __$$_ImgAssetsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String icon, String banner});
}

/// @nodoc
class __$$_ImgAssetsCopyWithImpl<$Res>
    extends _$ImgAssetsCopyWithImpl<$Res, _$_ImgAssets>
    implements _$$_ImgAssetsCopyWith<$Res> {
  __$$_ImgAssetsCopyWithImpl(
      _$_ImgAssets _value, $Res Function(_$_ImgAssets) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = null,
    Object? banner = null,
  }) {
    return _then(_$_ImgAssets(
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      banner: null == banner
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ImgAssets implements _ImgAssets {
  const _$_ImgAssets({required this.icon, required this.banner});

  factory _$_ImgAssets.fromJson(Map<String, dynamic> json) =>
      _$$_ImgAssetsFromJson(json);

  @override
  final String icon;
  @override
  final String banner;

  @override
  String toString() {
    return 'ImgAssets(icon: $icon, banner: $banner)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImgAssets &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.banner, banner) || other.banner == banner));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, icon, banner);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImgAssetsCopyWith<_$_ImgAssets> get copyWith =>
      __$$_ImgAssetsCopyWithImpl<_$_ImgAssets>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImgAssetsToJson(
      this,
    );
  }
}

abstract class _ImgAssets implements ImgAssets {
  const factory _ImgAssets(
      {required final String icon,
      required final String banner}) = _$_ImgAssets;

  factory _ImgAssets.fromJson(Map<String, dynamic> json) =
      _$_ImgAssets.fromJson;

  @override
  String get icon;
  @override
  String get banner;
  @override
  @JsonKey(ignore: true)
  _$$_ImgAssetsCopyWith<_$_ImgAssets> get copyWith =>
      throw _privateConstructorUsedError;
}
