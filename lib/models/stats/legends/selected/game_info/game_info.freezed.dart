// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'game_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GameInfo _$GameInfoFromJson(Map<String, dynamic> json) {
  return _GameInfo.fromJson(json);
}

/// @nodoc
mixin _$GameInfo {
  String get skin => throw _privateConstructorUsedError;
  String get skinRarity => throw _privateConstructorUsedError;
  String get frame => throw _privateConstructorUsedError;
  String get frameRarity => throw _privateConstructorUsedError;
  String get pose => throw _privateConstructorUsedError;
  String get poseRarity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameInfoCopyWith<GameInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameInfoCopyWith<$Res> {
  factory $GameInfoCopyWith(GameInfo value, $Res Function(GameInfo) then) =
      _$GameInfoCopyWithImpl<$Res, GameInfo>;
  @useResult
  $Res call(
      {String skin,
      String skinRarity,
      String frame,
      String frameRarity,
      String pose,
      String poseRarity});
}

/// @nodoc
class _$GameInfoCopyWithImpl<$Res, $Val extends GameInfo>
    implements $GameInfoCopyWith<$Res> {
  _$GameInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? skin = null,
    Object? skinRarity = null,
    Object? frame = null,
    Object? frameRarity = null,
    Object? pose = null,
    Object? poseRarity = null,
  }) {
    return _then(_value.copyWith(
      skin: null == skin
          ? _value.skin
          : skin // ignore: cast_nullable_to_non_nullable
              as String,
      skinRarity: null == skinRarity
          ? _value.skinRarity
          : skinRarity // ignore: cast_nullable_to_non_nullable
              as String,
      frame: null == frame
          ? _value.frame
          : frame // ignore: cast_nullable_to_non_nullable
              as String,
      frameRarity: null == frameRarity
          ? _value.frameRarity
          : frameRarity // ignore: cast_nullable_to_non_nullable
              as String,
      pose: null == pose
          ? _value.pose
          : pose // ignore: cast_nullable_to_non_nullable
              as String,
      poseRarity: null == poseRarity
          ? _value.poseRarity
          : poseRarity // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GameInfoCopyWith<$Res> implements $GameInfoCopyWith<$Res> {
  factory _$$_GameInfoCopyWith(
          _$_GameInfo value, $Res Function(_$_GameInfo) then) =
      __$$_GameInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String skin,
      String skinRarity,
      String frame,
      String frameRarity,
      String pose,
      String poseRarity});
}

/// @nodoc
class __$$_GameInfoCopyWithImpl<$Res>
    extends _$GameInfoCopyWithImpl<$Res, _$_GameInfo>
    implements _$$_GameInfoCopyWith<$Res> {
  __$$_GameInfoCopyWithImpl(
      _$_GameInfo _value, $Res Function(_$_GameInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? skin = null,
    Object? skinRarity = null,
    Object? frame = null,
    Object? frameRarity = null,
    Object? pose = null,
    Object? poseRarity = null,
  }) {
    return _then(_$_GameInfo(
      skin: null == skin
          ? _value.skin
          : skin // ignore: cast_nullable_to_non_nullable
              as String,
      skinRarity: null == skinRarity
          ? _value.skinRarity
          : skinRarity // ignore: cast_nullable_to_non_nullable
              as String,
      frame: null == frame
          ? _value.frame
          : frame // ignore: cast_nullable_to_non_nullable
              as String,
      frameRarity: null == frameRarity
          ? _value.frameRarity
          : frameRarity // ignore: cast_nullable_to_non_nullable
              as String,
      pose: null == pose
          ? _value.pose
          : pose // ignore: cast_nullable_to_non_nullable
              as String,
      poseRarity: null == poseRarity
          ? _value.poseRarity
          : poseRarity // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_GameInfo implements _GameInfo {
  const _$_GameInfo(
      {required this.skin,
      required this.skinRarity,
      required this.frame,
      required this.frameRarity,
      required this.pose,
      required this.poseRarity});

  factory _$_GameInfo.fromJson(Map<String, dynamic> json) =>
      _$$_GameInfoFromJson(json);

  @override
  final String skin;
  @override
  final String skinRarity;
  @override
  final String frame;
  @override
  final String frameRarity;
  @override
  final String pose;
  @override
  final String poseRarity;

  @override
  String toString() {
    return 'GameInfo(skin: $skin, skinRarity: $skinRarity, frame: $frame, frameRarity: $frameRarity, pose: $pose, poseRarity: $poseRarity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GameInfo &&
            (identical(other.skin, skin) || other.skin == skin) &&
            (identical(other.skinRarity, skinRarity) ||
                other.skinRarity == skinRarity) &&
            (identical(other.frame, frame) || other.frame == frame) &&
            (identical(other.frameRarity, frameRarity) ||
                other.frameRarity == frameRarity) &&
            (identical(other.pose, pose) || other.pose == pose) &&
            (identical(other.poseRarity, poseRarity) ||
                other.poseRarity == poseRarity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, skin, skinRarity, frame, frameRarity, pose, poseRarity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GameInfoCopyWith<_$_GameInfo> get copyWith =>
      __$$_GameInfoCopyWithImpl<_$_GameInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GameInfoToJson(
      this,
    );
  }
}

abstract class _GameInfo implements GameInfo {
  const factory _GameInfo(
      {required final String skin,
      required final String skinRarity,
      required final String frame,
      required final String frameRarity,
      required final String pose,
      required final String poseRarity}) = _$_GameInfo;

  factory _GameInfo.fromJson(Map<String, dynamic> json) = _$_GameInfo.fromJson;

  @override
  String get skin;
  @override
  String get skinRarity;
  @override
  String get frame;
  @override
  String get frameRarity;
  @override
  String get pose;
  @override
  String get poseRarity;
  @override
  @JsonKey(ignore: true)
  _$$_GameInfoCopyWith<_$_GameInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
