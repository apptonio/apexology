// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'arenas.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Arenas _$ArenasFromJson(Map<String, dynamic> json) {
  return _Arenas.fromJson(json);
}

/// @nodoc
mixin _$Arenas {
  Current get current => throw _privateConstructorUsedError;
  Next get next => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArenasCopyWith<Arenas> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArenasCopyWith<$Res> {
  factory $ArenasCopyWith(Arenas value, $Res Function(Arenas) then) =
      _$ArenasCopyWithImpl<$Res, Arenas>;
  @useResult
  $Res call({Current current, Next next});

  $CurrentCopyWith<$Res> get current;
  $NextCopyWith<$Res> get next;
}

/// @nodoc
class _$ArenasCopyWithImpl<$Res, $Val extends Arenas>
    implements $ArenasCopyWith<$Res> {
  _$ArenasCopyWithImpl(this._value, this._then);

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
abstract class _$$_ArenasCopyWith<$Res> implements $ArenasCopyWith<$Res> {
  factory _$$_ArenasCopyWith(_$_Arenas value, $Res Function(_$_Arenas) then) =
      __$$_ArenasCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Current current, Next next});

  @override
  $CurrentCopyWith<$Res> get current;
  @override
  $NextCopyWith<$Res> get next;
}

/// @nodoc
class __$$_ArenasCopyWithImpl<$Res>
    extends _$ArenasCopyWithImpl<$Res, _$_Arenas>
    implements _$$_ArenasCopyWith<$Res> {
  __$$_ArenasCopyWithImpl(_$_Arenas _value, $Res Function(_$_Arenas) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = null,
    Object? next = null,
  }) {
    return _then(_$_Arenas(
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
class _$_Arenas implements _Arenas {
  const _$_Arenas({required this.current, required this.next});

  factory _$_Arenas.fromJson(Map<String, dynamic> json) =>
      _$$_ArenasFromJson(json);

  @override
  final Current current;
  @override
  final Next next;

  @override
  String toString() {
    return 'Arenas(current: $current, next: $next)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Arenas &&
            (identical(other.current, current) || other.current == current) &&
            (identical(other.next, next) || other.next == next));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, current, next);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ArenasCopyWith<_$_Arenas> get copyWith =>
      __$$_ArenasCopyWithImpl<_$_Arenas>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArenasToJson(
      this,
    );
  }
}

abstract class _Arenas implements Arenas {
  const factory _Arenas(
      {required final Current current, required final Next next}) = _$_Arenas;

  factory _Arenas.fromJson(Map<String, dynamic> json) = _$_Arenas.fromJson;

  @override
  Current get current;
  @override
  Next get next;
  @override
  @JsonKey(ignore: true)
  _$$_ArenasCopyWith<_$_Arenas> get copyWith =>
      throw _privateConstructorUsedError;
}
