// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'legends.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Legends _$LegendsFromJson(Map<String, dynamic> json) {
  return _Legends.fromJson(json);
}

/// @nodoc
mixin _$Legends {
  Selected get selected => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LegendsCopyWith<Legends> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LegendsCopyWith<$Res> {
  factory $LegendsCopyWith(Legends value, $Res Function(Legends) then) =
      _$LegendsCopyWithImpl<$Res, Legends>;
  @useResult
  $Res call({Selected selected});

  $SelectedCopyWith<$Res> get selected;
}

/// @nodoc
class _$LegendsCopyWithImpl<$Res, $Val extends Legends>
    implements $LegendsCopyWith<$Res> {
  _$LegendsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selected = null,
  }) {
    return _then(_value.copyWith(
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as Selected,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SelectedCopyWith<$Res> get selected {
    return $SelectedCopyWith<$Res>(_value.selected, (value) {
      return _then(_value.copyWith(selected: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LegendsCopyWith<$Res> implements $LegendsCopyWith<$Res> {
  factory _$$_LegendsCopyWith(
          _$_Legends value, $Res Function(_$_Legends) then) =
      __$$_LegendsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Selected selected});

  @override
  $SelectedCopyWith<$Res> get selected;
}

/// @nodoc
class __$$_LegendsCopyWithImpl<$Res>
    extends _$LegendsCopyWithImpl<$Res, _$_Legends>
    implements _$$_LegendsCopyWith<$Res> {
  __$$_LegendsCopyWithImpl(_$_Legends _value, $Res Function(_$_Legends) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selected = null,
  }) {
    return _then(_$_Legends(
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as Selected,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Legends implements _Legends {
  const _$_Legends({required this.selected});

  factory _$_Legends.fromJson(Map<String, dynamic> json) =>
      _$$_LegendsFromJson(json);

  @override
  final Selected selected;

  @override
  String toString() {
    return 'Legends(selected: $selected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Legends &&
            (identical(other.selected, selected) ||
                other.selected == selected));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, selected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LegendsCopyWith<_$_Legends> get copyWith =>
      __$$_LegendsCopyWithImpl<_$_Legends>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LegendsToJson(
      this,
    );
  }
}

abstract class _Legends implements Legends {
  const factory _Legends({required final Selected selected}) = _$_Legends;

  factory _Legends.fromJson(Map<String, dynamic> json) = _$_Legends.fromJson;

  @override
  Selected get selected;
  @override
  @JsonKey(ignore: true)
  _$$_LegendsCopyWith<_$_Legends> get copyWith =>
      throw _privateConstructorUsedError;
}
