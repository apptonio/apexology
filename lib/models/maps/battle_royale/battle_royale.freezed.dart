// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'battle_royale.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BattleRoyale _$BattleRoyaleFromJson(Map<String, dynamic> json) {
  return _BattleRoyale.fromJson(json);
}

/// @nodoc
mixin _$BattleRoyale {
  Current get current => throw _privateConstructorUsedError;
  Next get next => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BattleRoyaleCopyWith<BattleRoyale> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BattleRoyaleCopyWith<$Res> {
  factory $BattleRoyaleCopyWith(
          BattleRoyale value, $Res Function(BattleRoyale) then) =
      _$BattleRoyaleCopyWithImpl<$Res, BattleRoyale>;
  @useResult
  $Res call({Current current, Next next});

  $CurrentCopyWith<$Res> get current;
  $NextCopyWith<$Res> get next;
}

/// @nodoc
class _$BattleRoyaleCopyWithImpl<$Res, $Val extends BattleRoyale>
    implements $BattleRoyaleCopyWith<$Res> {
  _$BattleRoyaleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = null,
    Object? next = null,
  }) {
    return _then(_value.copyWith(
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as Current,
      next: null == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as Next,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrentCopyWith<$Res> get current {
    return $CurrentCopyWith<$Res>(_value.current, (value) {
      return _then(_value.copyWith(current: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $NextCopyWith<$Res> get next {
    return $NextCopyWith<$Res>(_value.next, (value) {
      return _then(_value.copyWith(next: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BattleRoyaleCopyWith<$Res>
    implements $BattleRoyaleCopyWith<$Res> {
  factory _$$_BattleRoyaleCopyWith(
          _$_BattleRoyale value, $Res Function(_$_BattleRoyale) then) =
      __$$_BattleRoyaleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Current current, Next next});

  @override
  $CurrentCopyWith<$Res> get current;
  @override
  $NextCopyWith<$Res> get next;
}

/// @nodoc
class __$$_BattleRoyaleCopyWithImpl<$Res>
    extends _$BattleRoyaleCopyWithImpl<$Res, _$_BattleRoyale>
    implements _$$_BattleRoyaleCopyWith<$Res> {
  __$$_BattleRoyaleCopyWithImpl(
      _$_BattleRoyale _value, $Res Function(_$_BattleRoyale) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = null,
    Object? next = null,
  }) {
    return _then(_$_BattleRoyale(
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as Current,
      next: null == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as Next,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_BattleRoyale implements _BattleRoyale {
  const _$_BattleRoyale({required this.current, required this.next});

  factory _$_BattleRoyale.fromJson(Map<String, dynamic> json) =>
      _$$_BattleRoyaleFromJson(json);

  @override
  final Current current;
  @override
  final Next next;

  @override
  String toString() {
    return 'BattleRoyale(current: $current, next: $next)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BattleRoyale &&
            (identical(other.current, current) || other.current == current) &&
            (identical(other.next, next) || other.next == next));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, current, next);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BattleRoyaleCopyWith<_$_BattleRoyale> get copyWith =>
      __$$_BattleRoyaleCopyWithImpl<_$_BattleRoyale>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BattleRoyaleToJson(
      this,
    );
  }
}

abstract class _BattleRoyale implements BattleRoyale {
  const factory _BattleRoyale(
      {required final Current current,
      required final Next next}) = _$_BattleRoyale;

  factory _BattleRoyale.fromJson(Map<String, dynamic> json) =
      _$_BattleRoyale.fromJson;

  @override
  Current get current;
  @override
  Next get next;
  @override
  @JsonKey(ignore: true)
  _$$_BattleRoyaleCopyWith<_$_BattleRoyale> get copyWith =>
      throw _privateConstructorUsedError;
}
