// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'item_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ItemType _$ItemTypeFromJson(Map<String, dynamic> json) {
  return _ItemType.fromJson(json);
}

/// @nodoc
mixin _$ItemType {
  String get name => throw _privateConstructorUsedError;
  String get rarity => throw _privateConstructorUsedError;
  String get asset => throw _privateConstructorUsedError;
  String get rarityHex => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemTypeCopyWith<ItemType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemTypeCopyWith<$Res> {
  factory $ItemTypeCopyWith(ItemType value, $Res Function(ItemType) then) =
      _$ItemTypeCopyWithImpl<$Res, ItemType>;
  @useResult
  $Res call({String name, String rarity, String asset, String rarityHex});
}

/// @nodoc
class _$ItemTypeCopyWithImpl<$Res, $Val extends ItemType>
    implements $ItemTypeCopyWith<$Res> {
  _$ItemTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? rarity = null,
    Object? asset = null,
    Object? rarityHex = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      rarity: null == rarity
          ? _value.rarity
          : rarity // ignore: cast_nullable_to_non_nullable
              as String,
      asset: null == asset
          ? _value.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as String,
      rarityHex: null == rarityHex
          ? _value.rarityHex
          : rarityHex // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ItemTypeCopyWith<$Res> implements $ItemTypeCopyWith<$Res> {
  factory _$$_ItemTypeCopyWith(
          _$_ItemType value, $Res Function(_$_ItemType) then) =
      __$$_ItemTypeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String rarity, String asset, String rarityHex});
}

/// @nodoc
class __$$_ItemTypeCopyWithImpl<$Res>
    extends _$ItemTypeCopyWithImpl<$Res, _$_ItemType>
    implements _$$_ItemTypeCopyWith<$Res> {
  __$$_ItemTypeCopyWithImpl(
      _$_ItemType _value, $Res Function(_$_ItemType) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? rarity = null,
    Object? asset = null,
    Object? rarityHex = null,
  }) {
    return _then(_$_ItemType(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      rarity: null == rarity
          ? _value.rarity
          : rarity // ignore: cast_nullable_to_non_nullable
              as String,
      asset: null == asset
          ? _value.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as String,
      rarityHex: null == rarityHex
          ? _value.rarityHex
          : rarityHex // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ItemType implements _ItemType {
  const _$_ItemType(
      {required this.name,
      required this.rarity,
      required this.asset,
      required this.rarityHex});

  factory _$_ItemType.fromJson(Map<String, dynamic> json) =>
      _$$_ItemTypeFromJson(json);

  @override
  final String name;
  @override
  final String rarity;
  @override
  final String asset;
  @override
  final String rarityHex;

  @override
  String toString() {
    return 'ItemType(name: $name, rarity: $rarity, asset: $asset, rarityHex: $rarityHex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemType &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.rarity, rarity) || other.rarity == rarity) &&
            (identical(other.asset, asset) || other.asset == asset) &&
            (identical(other.rarityHex, rarityHex) ||
                other.rarityHex == rarityHex));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, rarity, asset, rarityHex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ItemTypeCopyWith<_$_ItemType> get copyWith =>
      __$$_ItemTypeCopyWithImpl<_$_ItemType>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemTypeToJson(
      this,
    );
  }
}

abstract class _ItemType implements ItemType {
  const factory _ItemType(
      {required final String name,
      required final String rarity,
      required final String asset,
      required final String rarityHex}) = _$_ItemType;

  factory _ItemType.fromJson(Map<String, dynamic> json) = _$_ItemType.fromJson;

  @override
  String get name;
  @override
  String get rarity;
  @override
  String get asset;
  @override
  String get rarityHex;
  @override
  @JsonKey(ignore: true)
  _$$_ItemTypeCopyWith<_$_ItemType> get copyWith =>
      throw _privateConstructorUsedError;
}
