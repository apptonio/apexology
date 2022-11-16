// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'arenas_ranked.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ArenasRanked _$ArenasRankedFromJson(Map<String, dynamic> json) {
  return _ArenasRanked.fromJson(json);
}

/// @nodoc
mixin _$ArenasRanked {
  Current get current => throw _privateConstructorUsedError;
  Next get next => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArenasRankedCopyWith<ArenasRanked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArenasRankedCopyWith<$Res> {
  factory $ArenasRankedCopyWith(
          ArenasRanked value, $Res Function(ArenasRanked) then) =
      _$ArenasRankedCopyWithImpl<$Res, ArenasRanked>;
  @useResult
  $Res call({Current current, Next next});

  $CurrentCopyWith<$Res> get current;
  $NextCopyWith<$Res> get next;
}

/// @nodoc
class _$ArenasRankedCopyWithImpl<$Res, $Val extends ArenasRanked>
    implements $ArenasRankedCopyWith<$Res> {
  _$ArenasRankedCopyWithImpl(this._value, this._then);

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
abstract class _$$_ArenasRankedCopyWith<$Res>
    implements $ArenasRankedCopyWith<$Res> {
  factory _$$_ArenasRankedCopyWith(
          _$_ArenasRanked value, $Res Function(_$_ArenasRanked) then) =
      __$$_ArenasRankedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Current current, Next next});

  @override
  $CurrentCopyWith<$Res> get current;
  @override
  $NextCopyWith<$Res> get next;
}

/// @nodoc
class __$$_ArenasRankedCopyWithImpl<$Res>
    extends _$ArenasRankedCopyWithImpl<$Res, _$_ArenasRanked>
    implements _$$_ArenasRankedCopyWith<$Res> {
  __$$_ArenasRankedCopyWithImpl(
      _$_ArenasRanked _value, $Res Function(_$_ArenasRanked) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = null,
    Object? next = null,
  }) {
    return _then(_$_ArenasRanked(
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
class _$_ArenasRanked implements _ArenasRanked {
  const _$_ArenasRanked({required this.current, required this.next});

  factory _$_ArenasRanked.fromJson(Map<String, dynamic> json) =>
      _$$_ArenasRankedFromJson(json);

  @override
  final Current current;
  @override
  final Next next;

  @override
  String toString() {
    return 'ArenasRanked(current: $current, next: $next)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArenasRanked &&
            (identical(other.current, current) || other.current == current) &&
            (identical(other.next, next) || other.next == next));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, current, next);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ArenasRankedCopyWith<_$_ArenasRanked> get copyWith =>
      __$$_ArenasRankedCopyWithImpl<_$_ArenasRanked>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArenasRankedToJson(
      this,
    );
  }
}

abstract class _ArenasRanked implements ArenasRanked {
  const factory _ArenasRanked(
      {required final Current current,
      required final Next next}) = _$_ArenasRanked;

  factory _ArenasRanked.fromJson(Map<String, dynamic> json) =
      _$_ArenasRanked.fromJson;

  @override
  Current get current;
  @override
  Next get next;
  @override
  @JsonKey(ignore: true)
  _$$_ArenasRankedCopyWith<_$_ArenasRanked> get copyWith =>
      throw _privateConstructorUsedError;
}
