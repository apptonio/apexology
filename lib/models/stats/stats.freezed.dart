// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'stats.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Stats _$StatsFromJson(Map<String, dynamic> json) {
  return _Stats.fromJson(json);
}

/// @nodoc
mixin _$Stats {
  Global get global => throw _privateConstructorUsedError;
  Realtime get realtime => throw _privateConstructorUsedError;
  Legends get legends => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatsCopyWith<Stats> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatsCopyWith<$Res> {
  factory $StatsCopyWith(Stats value, $Res Function(Stats) then) =
      _$StatsCopyWithImpl<$Res, Stats>;
  @useResult
  $Res call({Global global, Realtime realtime, Legends legends});

  $GlobalCopyWith<$Res> get global;
  $RealtimeCopyWith<$Res> get realtime;
  $LegendsCopyWith<$Res> get legends;
}

/// @nodoc
class _$StatsCopyWithImpl<$Res, $Val extends Stats>
    implements $StatsCopyWith<$Res> {
  _$StatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? global = null,
    Object? realtime = null,
    Object? legends = null,
  }) {
    return _then(_value.copyWith(
      global: null == global
          ? _value.global
          : global // ignore: cast_nullable_to_non_nullable
              as Global,
      realtime: null == realtime
          ? _value.realtime
          : realtime // ignore: cast_nullable_to_non_nullable
              as Realtime,
      legends: null == legends
          ? _value.legends
          : legends // ignore: cast_nullable_to_non_nullable
              as Legends,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GlobalCopyWith<$Res> get global {
    return $GlobalCopyWith<$Res>(_value.global, (value) {
      return _then(_value.copyWith(global: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RealtimeCopyWith<$Res> get realtime {
    return $RealtimeCopyWith<$Res>(_value.realtime, (value) {
      return _then(_value.copyWith(realtime: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LegendsCopyWith<$Res> get legends {
    return $LegendsCopyWith<$Res>(_value.legends, (value) {
      return _then(_value.copyWith(legends: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_StatsCopyWith<$Res> implements $StatsCopyWith<$Res> {
  factory _$$_StatsCopyWith(_$_Stats value, $Res Function(_$_Stats) then) =
      __$$_StatsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Global global, Realtime realtime, Legends legends});

  @override
  $GlobalCopyWith<$Res> get global;
  @override
  $RealtimeCopyWith<$Res> get realtime;
  @override
  $LegendsCopyWith<$Res> get legends;
}

/// @nodoc
class __$$_StatsCopyWithImpl<$Res> extends _$StatsCopyWithImpl<$Res, _$_Stats>
    implements _$$_StatsCopyWith<$Res> {
  __$$_StatsCopyWithImpl(_$_Stats _value, $Res Function(_$_Stats) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? global = null,
    Object? realtime = null,
    Object? legends = null,
  }) {
    return _then(_$_Stats(
      global: null == global
          ? _value.global
          : global // ignore: cast_nullable_to_non_nullable
              as Global,
      realtime: null == realtime
          ? _value.realtime
          : realtime // ignore: cast_nullable_to_non_nullable
              as Realtime,
      legends: null == legends
          ? _value.legends
          : legends // ignore: cast_nullable_to_non_nullable
              as Legends,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Stats implements _Stats {
  const _$_Stats(
      {required this.global, required this.realtime, required this.legends});

  factory _$_Stats.fromJson(Map<String, dynamic> json) =>
      _$$_StatsFromJson(json);

  @override
  final Global global;
  @override
  final Realtime realtime;
  @override
  final Legends legends;

  @override
  String toString() {
    return 'Stats(global: $global, realtime: $realtime, legends: $legends)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Stats &&
            (identical(other.global, global) || other.global == global) &&
            (identical(other.realtime, realtime) ||
                other.realtime == realtime) &&
            (identical(other.legends, legends) || other.legends == legends));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, global, realtime, legends);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StatsCopyWith<_$_Stats> get copyWith =>
      __$$_StatsCopyWithImpl<_$_Stats>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StatsToJson(
      this,
    );
  }
}

abstract class _Stats implements Stats {
  const factory _Stats(
      {required final Global global,
      required final Realtime realtime,
      required final Legends legends}) = _$_Stats;

  factory _Stats.fromJson(Map<String, dynamic> json) = _$_Stats.fromJson;

  @override
  Global get global;
  @override
  Realtime get realtime;
  @override
  Legends get legends;
  @override
  @JsonKey(ignore: true)
  _$$_StatsCopyWith<_$_Stats> get copyWith =>
      throw _privateConstructorUsedError;
}
