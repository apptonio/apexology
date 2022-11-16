// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'next.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Next _$NextFromJson(Map<String, dynamic> json) {
  return _Next.fromJson(json);
}

/// @nodoc
mixin _$Next {
  @JsonKey(name: "readableDate_start")
  String get dateStart => throw _privateConstructorUsedError;
  @JsonKey(name: "readableDate_end")
  String get dateEnd => throw _privateConstructorUsedError;
  String get map => throw _privateConstructorUsedError;
  String get asset => throw _privateConstructorUsedError;
  String? get eventName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NextCopyWith<Next> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NextCopyWith<$Res> {
  factory $NextCopyWith(Next value, $Res Function(Next) then) =
      _$NextCopyWithImpl<$Res, Next>;
  @useResult
  $Res call(
      {@JsonKey(name: "readableDate_start") String dateStart,
      @JsonKey(name: "readableDate_end") String dateEnd,
      String map,
      String asset,
      String? eventName});
}

/// @nodoc
class _$NextCopyWithImpl<$Res, $Val extends Next>
    implements $NextCopyWith<$Res> {
  _$NextCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateStart = null,
    Object? dateEnd = null,
    Object? map = null,
    Object? asset = null,
    Object? eventName = freezed,
  }) {
    return _then(_value.copyWith(
      dateStart: null == dateStart
          ? _value.dateStart
          : dateStart // ignore: cast_nullable_to_non_nullable
              as String,
      dateEnd: null == dateEnd
          ? _value.dateEnd
          : dateEnd // ignore: cast_nullable_to_non_nullable
              as String,
      map: null == map
          ? _value.map
          : map // ignore: cast_nullable_to_non_nullable
              as String,
      asset: null == asset
          ? _value.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as String,
      eventName: freezed == eventName
          ? _value.eventName
          : eventName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NextCopyWith<$Res> implements $NextCopyWith<$Res> {
  factory _$$_NextCopyWith(_$_Next value, $Res Function(_$_Next) then) =
      __$$_NextCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "readableDate_start") String dateStart,
      @JsonKey(name: "readableDate_end") String dateEnd,
      String map,
      String asset,
      String? eventName});
}

/// @nodoc
class __$$_NextCopyWithImpl<$Res> extends _$NextCopyWithImpl<$Res, _$_Next>
    implements _$$_NextCopyWith<$Res> {
  __$$_NextCopyWithImpl(_$_Next _value, $Res Function(_$_Next) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateStart = null,
    Object? dateEnd = null,
    Object? map = null,
    Object? asset = null,
    Object? eventName = freezed,
  }) {
    return _then(_$_Next(
      dateStart: null == dateStart
          ? _value.dateStart
          : dateStart // ignore: cast_nullable_to_non_nullable
              as String,
      dateEnd: null == dateEnd
          ? _value.dateEnd
          : dateEnd // ignore: cast_nullable_to_non_nullable
              as String,
      map: null == map
          ? _value.map
          : map // ignore: cast_nullable_to_non_nullable
              as String,
      asset: null == asset
          ? _value.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as String,
      eventName: freezed == eventName
          ? _value.eventName
          : eventName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Next implements _Next {
  const _$_Next(
      {@JsonKey(name: "readableDate_start") required this.dateStart,
      @JsonKey(name: "readableDate_end") required this.dateEnd,
      required this.map,
      required this.asset,
      required this.eventName});

  factory _$_Next.fromJson(Map<String, dynamic> json) => _$$_NextFromJson(json);

  @override
  @JsonKey(name: "readableDate_start")
  final String dateStart;
  @override
  @JsonKey(name: "readableDate_end")
  final String dateEnd;
  @override
  final String map;
  @override
  final String asset;
  @override
  final String? eventName;

  @override
  String toString() {
    return 'Next(dateStart: $dateStart, dateEnd: $dateEnd, map: $map, asset: $asset, eventName: $eventName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Next &&
            (identical(other.dateStart, dateStart) ||
                other.dateStart == dateStart) &&
            (identical(other.dateEnd, dateEnd) || other.dateEnd == dateEnd) &&
            (identical(other.map, map) || other.map == map) &&
            (identical(other.asset, asset) || other.asset == asset) &&
            (identical(other.eventName, eventName) ||
                other.eventName == eventName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, dateStart, dateEnd, map, asset, eventName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NextCopyWith<_$_Next> get copyWith =>
      __$$_NextCopyWithImpl<_$_Next>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NextToJson(
      this,
    );
  }
}

abstract class _Next implements Next {
  const factory _Next(
      {@JsonKey(name: "readableDate_start") required final String dateStart,
      @JsonKey(name: "readableDate_end") required final String dateEnd,
      required final String map,
      required final String asset,
      required final String? eventName}) = _$_Next;

  factory _Next.fromJson(Map<String, dynamic> json) = _$_Next.fromJson;

  @override
  @JsonKey(name: "readableDate_start")
  String get dateStart;
  @override
  @JsonKey(name: "readableDate_end")
  String get dateEnd;
  @override
  String get map;
  @override
  String get asset;
  @override
  String? get eventName;
  @override
  @JsonKey(ignore: true)
  _$$_NextCopyWith<_$_Next> get copyWith => throw _privateConstructorUsedError;
}
