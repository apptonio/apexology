// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bundles.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Bundles _$BundlesFromJson(Map<String, dynamic> json) {
  return _Bundles.fromJson(json);
}

/// @nodoc
mixin _$Bundles {
  String get bundle => throw _privateConstructorUsedError;
  String? get startDate => throw _privateConstructorUsedError;
  String? get endDate => throw _privateConstructorUsedError;
  String get bundleType => throw _privateConstructorUsedError;
  List<Item> get bundleContent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BundlesCopyWith<Bundles> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BundlesCopyWith<$Res> {
  factory $BundlesCopyWith(Bundles value, $Res Function(Bundles) then) =
      _$BundlesCopyWithImpl<$Res, Bundles>;
  @useResult
  $Res call(
      {String bundle,
      String? startDate,
      String? endDate,
      String bundleType,
      List<Item> bundleContent});
}

/// @nodoc
class _$BundlesCopyWithImpl<$Res, $Val extends Bundles>
    implements $BundlesCopyWith<$Res> {
  _$BundlesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bundle = null,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? bundleType = null,
    Object? bundleContent = null,
  }) {
    return _then(_value.copyWith(
      bundle: null == bundle
          ? _value.bundle
          : bundle // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      bundleType: null == bundleType
          ? _value.bundleType
          : bundleType // ignore: cast_nullable_to_non_nullable
              as String,
      bundleContent: null == bundleContent
          ? _value.bundleContent
          : bundleContent // ignore: cast_nullable_to_non_nullable
              as List<Item>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BundlesCopyWith<$Res> implements $BundlesCopyWith<$Res> {
  factory _$$_BundlesCopyWith(
          _$_Bundles value, $Res Function(_$_Bundles) then) =
      __$$_BundlesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String bundle,
      String? startDate,
      String? endDate,
      String bundleType,
      List<Item> bundleContent});
}

/// @nodoc
class __$$_BundlesCopyWithImpl<$Res>
    extends _$BundlesCopyWithImpl<$Res, _$_Bundles>
    implements _$$_BundlesCopyWith<$Res> {
  __$$_BundlesCopyWithImpl(_$_Bundles _value, $Res Function(_$_Bundles) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bundle = null,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? bundleType = null,
    Object? bundleContent = null,
  }) {
    return _then(_$_Bundles(
      bundle: null == bundle
          ? _value.bundle
          : bundle // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      bundleType: null == bundleType
          ? _value.bundleType
          : bundleType // ignore: cast_nullable_to_non_nullable
              as String,
      bundleContent: null == bundleContent
          ? _value._bundleContent
          : bundleContent // ignore: cast_nullable_to_non_nullable
              as List<Item>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Bundles implements _Bundles {
  const _$_Bundles(
      {required this.bundle,
      required this.startDate,
      required this.endDate,
      required this.bundleType,
      required final List<Item> bundleContent})
      : _bundleContent = bundleContent;

  factory _$_Bundles.fromJson(Map<String, dynamic> json) =>
      _$$_BundlesFromJson(json);

  @override
  final String bundle;
  @override
  final String? startDate;
  @override
  final String? endDate;
  @override
  final String bundleType;
  final List<Item> _bundleContent;
  @override
  List<Item> get bundleContent {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bundleContent);
  }

  @override
  String toString() {
    return 'Bundles(bundle: $bundle, startDate: $startDate, endDate: $endDate, bundleType: $bundleType, bundleContent: $bundleContent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Bundles &&
            (identical(other.bundle, bundle) || other.bundle == bundle) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.bundleType, bundleType) ||
                other.bundleType == bundleType) &&
            const DeepCollectionEquality()
                .equals(other._bundleContent, _bundleContent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, bundle, startDate, endDate,
      bundleType, const DeepCollectionEquality().hash(_bundleContent));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BundlesCopyWith<_$_Bundles> get copyWith =>
      __$$_BundlesCopyWithImpl<_$_Bundles>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BundlesToJson(
      this,
    );
  }
}

abstract class _Bundles implements Bundles {
  const factory _Bundles(
      {required final String bundle,
      required final String? startDate,
      required final String? endDate,
      required final String bundleType,
      required final List<Item> bundleContent}) = _$_Bundles;

  factory _Bundles.fromJson(Map<String, dynamic> json) = _$_Bundles.fromJson;

  @override
  String get bundle;
  @override
  String? get startDate;
  @override
  String? get endDate;
  @override
  String get bundleType;
  @override
  List<Item> get bundleContent;
  @override
  @JsonKey(ignore: true)
  _$$_BundlesCopyWith<_$_Bundles> get copyWith =>
      throw _privateConstructorUsedError;
}
