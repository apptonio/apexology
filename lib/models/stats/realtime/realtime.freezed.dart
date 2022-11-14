// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'realtime.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Realtime _$RealtimeFromJson(Map<String, dynamic> json) {
  return _Realtime.fromJson(json);
}

/// @nodoc
mixin _$Realtime {
  int get isOnline => throw _privateConstructorUsedError;
  int get isInGame => throw _privateConstructorUsedError;
  String get selectedLegend => throw _privateConstructorUsedError;
  String get currentStateAsText => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RealtimeCopyWith<Realtime> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RealtimeCopyWith<$Res> {
  factory $RealtimeCopyWith(Realtime value, $Res Function(Realtime) then) =
      _$RealtimeCopyWithImpl<$Res, Realtime>;
  @useResult
  $Res call(
      {int isOnline,
      int isInGame,
      String selectedLegend,
      String currentStateAsText});
}

/// @nodoc
class _$RealtimeCopyWithImpl<$Res, $Val extends Realtime>
    implements $RealtimeCopyWith<$Res> {
  _$RealtimeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isOnline = null,
    Object? isInGame = null,
    Object? selectedLegend = null,
    Object? currentStateAsText = null,
  }) {
    return _then(_value.copyWith(
      isOnline: null == isOnline
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as int,
      isInGame: null == isInGame
          ? _value.isInGame
          : isInGame // ignore: cast_nullable_to_non_nullable
              as int,
      selectedLegend: null == selectedLegend
          ? _value.selectedLegend
          : selectedLegend // ignore: cast_nullable_to_non_nullable
              as String,
      currentStateAsText: null == currentStateAsText
          ? _value.currentStateAsText
          : currentStateAsText // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RealtimeCopyWith<$Res> implements $RealtimeCopyWith<$Res> {
  factory _$$_RealtimeCopyWith(
          _$_Realtime value, $Res Function(_$_Realtime) then) =
      __$$_RealtimeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int isOnline,
      int isInGame,
      String selectedLegend,
      String currentStateAsText});
}

/// @nodoc
class __$$_RealtimeCopyWithImpl<$Res>
    extends _$RealtimeCopyWithImpl<$Res, _$_Realtime>
    implements _$$_RealtimeCopyWith<$Res> {
  __$$_RealtimeCopyWithImpl(
      _$_Realtime _value, $Res Function(_$_Realtime) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isOnline = null,
    Object? isInGame = null,
    Object? selectedLegend = null,
    Object? currentStateAsText = null,
  }) {
    return _then(_$_Realtime(
      isOnline: null == isOnline
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as int,
      isInGame: null == isInGame
          ? _value.isInGame
          : isInGame // ignore: cast_nullable_to_non_nullable
              as int,
      selectedLegend: null == selectedLegend
          ? _value.selectedLegend
          : selectedLegend // ignore: cast_nullable_to_non_nullable
              as String,
      currentStateAsText: null == currentStateAsText
          ? _value.currentStateAsText
          : currentStateAsText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Realtime implements _Realtime {
  const _$_Realtime(
      {required this.isOnline,
      required this.isInGame,
      required this.selectedLegend,
      required this.currentStateAsText});

  factory _$_Realtime.fromJson(Map<String, dynamic> json) =>
      _$$_RealtimeFromJson(json);

  @override
  final int isOnline;
  @override
  final int isInGame;
  @override
  final String selectedLegend;
  @override
  final String currentStateAsText;

  @override
  String toString() {
    return 'Realtime(isOnline: $isOnline, isInGame: $isInGame, selectedLegend: $selectedLegend, currentStateAsText: $currentStateAsText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Realtime &&
            (identical(other.isOnline, isOnline) ||
                other.isOnline == isOnline) &&
            (identical(other.isInGame, isInGame) ||
                other.isInGame == isInGame) &&
            (identical(other.selectedLegend, selectedLegend) ||
                other.selectedLegend == selectedLegend) &&
            (identical(other.currentStateAsText, currentStateAsText) ||
                other.currentStateAsText == currentStateAsText));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, isOnline, isInGame, selectedLegend, currentStateAsText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RealtimeCopyWith<_$_Realtime> get copyWith =>
      __$$_RealtimeCopyWithImpl<_$_Realtime>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RealtimeToJson(
      this,
    );
  }
}

abstract class _Realtime implements Realtime {
  const factory _Realtime(
      {required final int isOnline,
      required final int isInGame,
      required final String selectedLegend,
      required final String currentStateAsText}) = _$_Realtime;

  factory _Realtime.fromJson(Map<String, dynamic> json) = _$_Realtime.fromJson;

  @override
  int get isOnline;
  @override
  int get isInGame;
  @override
  String get selectedLegend;
  @override
  String get currentStateAsText;
  @override
  @JsonKey(ignore: true)
  _$$_RealtimeCopyWith<_$_Realtime> get copyWith =>
      throw _privateConstructorUsedError;
}
