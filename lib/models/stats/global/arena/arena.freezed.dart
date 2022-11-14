// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'arena.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Arena _$ArenaFromJson(Map<String, dynamic> json) {
  return _Arena.fromJson(json);
}

/// @nodoc
mixin _$Arena {
  int get rankScore => throw _privateConstructorUsedError;
  String get rankName => throw _privateConstructorUsedError;
  String get rankImg => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArenaCopyWith<Arena> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArenaCopyWith<$Res> {
  factory $ArenaCopyWith(Arena value, $Res Function(Arena) then) =
      _$ArenaCopyWithImpl<$Res, Arena>;
  @useResult
  $Res call({int rankScore, String rankName, String rankImg});
}

/// @nodoc
class _$ArenaCopyWithImpl<$Res, $Val extends Arena>
    implements $ArenaCopyWith<$Res> {
  _$ArenaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rankScore = null,
    Object? rankName = null,
    Object? rankImg = null,
  }) {
    return _then(_value.copyWith(
      rankScore: null == rankScore
          ? _value.rankScore
          : rankScore // ignore: cast_nullable_to_non_nullable
              as int,
      rankName: null == rankName
          ? _value.rankName
          : rankName // ignore: cast_nullable_to_non_nullable
              as String,
      rankImg: null == rankImg
          ? _value.rankImg
          : rankImg // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ArenaCopyWith<$Res> implements $ArenaCopyWith<$Res> {
  factory _$$_ArenaCopyWith(_$_Arena value, $Res Function(_$_Arena) then) =
      __$$_ArenaCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int rankScore, String rankName, String rankImg});
}

/// @nodoc
class __$$_ArenaCopyWithImpl<$Res> extends _$ArenaCopyWithImpl<$Res, _$_Arena>
    implements _$$_ArenaCopyWith<$Res> {
  __$$_ArenaCopyWithImpl(_$_Arena _value, $Res Function(_$_Arena) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rankScore = null,
    Object? rankName = null,
    Object? rankImg = null,
  }) {
    return _then(_$_Arena(
      rankScore: null == rankScore
          ? _value.rankScore
          : rankScore // ignore: cast_nullable_to_non_nullable
              as int,
      rankName: null == rankName
          ? _value.rankName
          : rankName // ignore: cast_nullable_to_non_nullable
              as String,
      rankImg: null == rankImg
          ? _value.rankImg
          : rankImg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Arena implements _Arena {
  const _$_Arena(
      {required this.rankScore, required this.rankName, required this.rankImg});

  factory _$_Arena.fromJson(Map<String, dynamic> json) =>
      _$$_ArenaFromJson(json);

  @override
  final int rankScore;
  @override
  final String rankName;
  @override
  final String rankImg;

  @override
  String toString() {
    return 'Arena(rankScore: $rankScore, rankName: $rankName, rankImg: $rankImg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Arena &&
            (identical(other.rankScore, rankScore) ||
                other.rankScore == rankScore) &&
            (identical(other.rankName, rankName) ||
                other.rankName == rankName) &&
            (identical(other.rankImg, rankImg) || other.rankImg == rankImg));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, rankScore, rankName, rankImg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ArenaCopyWith<_$_Arena> get copyWith =>
      __$$_ArenaCopyWithImpl<_$_Arena>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArenaToJson(
      this,
    );
  }
}

abstract class _Arena implements Arena {
  const factory _Arena(
      {required final int rankScore,
      required final String rankName,
      required final String rankImg}) = _$_Arena;

  factory _Arena.fromJson(Map<String, dynamic> json) = _$_Arena.fromJson;

  @override
  int get rankScore;
  @override
  String get rankName;
  @override
  String get rankImg;
  @override
  @JsonKey(ignore: true)
  _$$_ArenaCopyWith<_$_Arena> get copyWith =>
      throw _privateConstructorUsedError;
}
