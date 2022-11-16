// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'global.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Global _$GlobalFromJson(Map<String, dynamic> json) {
  return _Global.fromJson(json);
}

/// @nodoc
mixin _$Global {
  String get name => throw _privateConstructorUsedError;
  String get platform => throw _privateConstructorUsedError;
  int get level => throw _privateConstructorUsedError;
  int get toNextLevelPercent => throw _privateConstructorUsedError;
  int get levelPrestige => throw _privateConstructorUsedError;
  Rank get rank => throw _privateConstructorUsedError;
  Arena get arena => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GlobalCopyWith<Global> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GlobalCopyWith<$Res> {
  factory $GlobalCopyWith(Global value, $Res Function(Global) then) =
      _$GlobalCopyWithImpl<$Res, Global>;
  @useResult
  $Res call(
      {String name,
      String platform,
      int level,
      int toNextLevelPercent,
      int levelPrestige,
      Rank rank,
      Arena arena});

  $RankCopyWith<$Res> get rank;
  $ArenaCopyWith<$Res> get arena;
}

/// @nodoc
class _$GlobalCopyWithImpl<$Res, $Val extends Global>
    implements $GlobalCopyWith<$Res> {
  _$GlobalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? platform = null,
    Object? level = null,
    Object? toNextLevelPercent = null,
    Object? levelPrestige = null,
    Object? rank = null,
    Object? arena = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      toNextLevelPercent: null == toNextLevelPercent
          ? _value.toNextLevelPercent
          : toNextLevelPercent // ignore: cast_nullable_to_non_nullable
              as int,
      levelPrestige: null == levelPrestige
          ? _value.levelPrestige
          : levelPrestige // ignore: cast_nullable_to_non_nullable
              as int,
      rank: null == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as Rank,
      arena: null == arena
          ? _value.arena
          : arena // ignore: cast_nullable_to_non_nullable
              as Arena,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RankCopyWith<$Res> get rank {
    return $RankCopyWith<$Res>(_value.rank, (value) {
      return _then(_value.copyWith(rank: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ArenaCopyWith<$Res> get arena {
    return $ArenaCopyWith<$Res>(_value.arena, (value) {
      return _then(_value.copyWith(arena: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GlobalCopyWith<$Res> implements $GlobalCopyWith<$Res> {
  factory _$$_GlobalCopyWith(_$_Global value, $Res Function(_$_Global) then) =
      __$$_GlobalCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String platform,
      int level,
      int toNextLevelPercent,
      int levelPrestige,
      Rank rank,
      Arena arena});

  @override
  $RankCopyWith<$Res> get rank;
  @override
  $ArenaCopyWith<$Res> get arena;
}

/// @nodoc
class __$$_GlobalCopyWithImpl<$Res>
    extends _$GlobalCopyWithImpl<$Res, _$_Global>
    implements _$$_GlobalCopyWith<$Res> {
  __$$_GlobalCopyWithImpl(_$_Global _value, $Res Function(_$_Global) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? platform = null,
    Object? level = null,
    Object? toNextLevelPercent = null,
    Object? levelPrestige = null,
    Object? rank = null,
    Object? arena = null,
  }) {
    return _then(_$_Global(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      toNextLevelPercent: null == toNextLevelPercent
          ? _value.toNextLevelPercent
          : toNextLevelPercent // ignore: cast_nullable_to_non_nullable
              as int,
      levelPrestige: null == levelPrestige
          ? _value.levelPrestige
          : levelPrestige // ignore: cast_nullable_to_non_nullable
              as int,
      rank: null == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as Rank,
      arena: null == arena
          ? _value.arena
          : arena // ignore: cast_nullable_to_non_nullable
              as Arena,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Global implements _Global {
  const _$_Global(
      {required this.name,
      required this.platform,
      required this.level,
      required this.toNextLevelPercent,
      required this.levelPrestige,
      required this.rank,
      required this.arena});

  factory _$_Global.fromJson(Map<String, dynamic> json) =>
      _$$_GlobalFromJson(json);

  @override
  final String name;
  @override
  final String platform;
  @override
  final int level;
  @override
  final int toNextLevelPercent;
  @override
  final int levelPrestige;
  @override
  final Rank rank;
  @override
  final Arena arena;

  @override
  String toString() {
    return 'Global(name: $name, platform: $platform, level: $level, toNextLevelPercent: $toNextLevelPercent, levelPrestige: $levelPrestige, rank: $rank, arena: $arena)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Global &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.toNextLevelPercent, toNextLevelPercent) ||
                other.toNextLevelPercent == toNextLevelPercent) &&
            (identical(other.levelPrestige, levelPrestige) ||
                other.levelPrestige == levelPrestige) &&
            (identical(other.rank, rank) || other.rank == rank) &&
            (identical(other.arena, arena) || other.arena == arena));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, platform, level,
      toNextLevelPercent, levelPrestige, rank, arena);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GlobalCopyWith<_$_Global> get copyWith =>
      __$$_GlobalCopyWithImpl<_$_Global>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GlobalToJson(
      this,
    );
  }
}

abstract class _Global implements Global {
  const factory _Global(
      {required final String name,
      required final String platform,
      required final int level,
      required final int toNextLevelPercent,
      required final int levelPrestige,
      required final Rank rank,
      required final Arena arena}) = _$_Global;

  factory _Global.fromJson(Map<String, dynamic> json) = _$_Global.fromJson;

  @override
  String get name;
  @override
  String get platform;
  @override
  int get level;
  @override
  int get toNextLevelPercent;
  @override
  int get levelPrestige;
  @override
  Rank get rank;
  @override
  Arena get arena;
  @override
  @JsonKey(ignore: true)
  _$$_GlobalCopyWith<_$_Global> get copyWith =>
      throw _privateConstructorUsedError;
}
