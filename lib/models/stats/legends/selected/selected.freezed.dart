// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'selected.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Selected _$SelectedFromJson(Map<String, dynamic> json) {
  return _Selected.fromJson(json);
}

/// @nodoc
mixin _$Selected {
  @JsonKey(name: "LegendName")
  String get legendName => throw _privateConstructorUsedError;
  List<Data> get data => throw _privateConstructorUsedError;
  GameInfo get gameInfo => throw _privateConstructorUsedError;
  @JsonKey(name: "ImgAssets")
  ImgAssets get imgAssets => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SelectedCopyWith<Selected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectedCopyWith<$Res> {
  factory $SelectedCopyWith(Selected value, $Res Function(Selected) then) =
      _$SelectedCopyWithImpl<$Res, Selected>;
  @useResult
  $Res call(
      {@JsonKey(name: "LegendName") String legendName,
      List<Data> data,
      GameInfo gameInfo,
      @JsonKey(name: "ImgAssets") ImgAssets imgAssets});

  $GameInfoCopyWith<$Res> get gameInfo;
  $ImgAssetsCopyWith<$Res> get imgAssets;
}

/// @nodoc
class _$SelectedCopyWithImpl<$Res, $Val extends Selected>
    implements $SelectedCopyWith<$Res> {
  _$SelectedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? legendName = null,
    Object? data = null,
    Object? gameInfo = null,
    Object? imgAssets = null,
  }) {
    return _then(_value.copyWith(
      legendName: null == legendName
          ? _value.legendName
          : legendName // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Data>,
      gameInfo: null == gameInfo
          ? _value.gameInfo
          : gameInfo // ignore: cast_nullable_to_non_nullable
              as GameInfo,
      imgAssets: null == imgAssets
          ? _value.imgAssets
          : imgAssets // ignore: cast_nullable_to_non_nullable
              as ImgAssets,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GameInfoCopyWith<$Res> get gameInfo {
    return $GameInfoCopyWith<$Res>(_value.gameInfo, (value) {
      return _then(_value.copyWith(gameInfo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ImgAssetsCopyWith<$Res> get imgAssets {
    return $ImgAssetsCopyWith<$Res>(_value.imgAssets, (value) {
      return _then(_value.copyWith(imgAssets: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SelectedCopyWith<$Res> implements $SelectedCopyWith<$Res> {
  factory _$$_SelectedCopyWith(
          _$_Selected value, $Res Function(_$_Selected) then) =
      __$$_SelectedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "LegendName") String legendName,
      List<Data> data,
      GameInfo gameInfo,
      @JsonKey(name: "ImgAssets") ImgAssets imgAssets});

  @override
  $GameInfoCopyWith<$Res> get gameInfo;
  @override
  $ImgAssetsCopyWith<$Res> get imgAssets;
}

/// @nodoc
class __$$_SelectedCopyWithImpl<$Res>
    extends _$SelectedCopyWithImpl<$Res, _$_Selected>
    implements _$$_SelectedCopyWith<$Res> {
  __$$_SelectedCopyWithImpl(
      _$_Selected _value, $Res Function(_$_Selected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? legendName = null,
    Object? data = null,
    Object? gameInfo = null,
    Object? imgAssets = null,
  }) {
    return _then(_$_Selected(
      legendName: null == legendName
          ? _value.legendName
          : legendName // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Data>,
      gameInfo: null == gameInfo
          ? _value.gameInfo
          : gameInfo // ignore: cast_nullable_to_non_nullable
              as GameInfo,
      imgAssets: null == imgAssets
          ? _value.imgAssets
          : imgAssets // ignore: cast_nullable_to_non_nullable
              as ImgAssets,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Selected implements _Selected {
  const _$_Selected(
      {@JsonKey(name: "LegendName") required this.legendName,
      required final List<Data> data,
      required this.gameInfo,
      @JsonKey(name: "ImgAssets") required this.imgAssets})
      : _data = data;

  factory _$_Selected.fromJson(Map<String, dynamic> json) =>
      _$$_SelectedFromJson(json);

  @override
  @JsonKey(name: "LegendName")
  final String legendName;
  final List<Data> _data;
  @override
  List<Data> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final GameInfo gameInfo;
  @override
  @JsonKey(name: "ImgAssets")
  final ImgAssets imgAssets;

  @override
  String toString() {
    return 'Selected(legendName: $legendName, data: $data, gameInfo: $gameInfo, imgAssets: $imgAssets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Selected &&
            (identical(other.legendName, legendName) ||
                other.legendName == legendName) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.gameInfo, gameInfo) ||
                other.gameInfo == gameInfo) &&
            (identical(other.imgAssets, imgAssets) ||
                other.imgAssets == imgAssets));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, legendName,
      const DeepCollectionEquality().hash(_data), gameInfo, imgAssets);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectedCopyWith<_$_Selected> get copyWith =>
      __$$_SelectedCopyWithImpl<_$_Selected>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SelectedToJson(
      this,
    );
  }
}

abstract class _Selected implements Selected {
  const factory _Selected(
          {@JsonKey(name: "LegendName") required final String legendName,
          required final List<Data> data,
          required final GameInfo gameInfo,
          @JsonKey(name: "ImgAssets") required final ImgAssets imgAssets}) =
      _$_Selected;

  factory _Selected.fromJson(Map<String, dynamic> json) = _$_Selected.fromJson;

  @override
  @JsonKey(name: "LegendName")
  String get legendName;
  @override
  List<Data> get data;
  @override
  GameInfo get gameInfo;
  @override
  @JsonKey(name: "ImgAssets")
  ImgAssets get imgAssets;
  @override
  @JsonKey(ignore: true)
  _$$_SelectedCopyWith<_$_Selected> get copyWith =>
      throw _privateConstructorUsedError;
}
