// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bundles.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Bundles _$$_BundlesFromJson(Map<String, dynamic> json) => _$_Bundles(
      bundle: json['bundle'] as String,
      startDate: json['startDate'] as String?,
      endDate: json['endDate'] as String?,
      bundleType: json['bundleType'] as String,
      bundleContent: (json['bundleContent'] as List<dynamic>)
          .map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_BundlesToJson(_$_Bundles instance) =>
    <String, dynamic>{
      'bundle': instance.bundle,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'bundleType': instance.bundleType,
      'bundleContent': instance.bundleContent.map((e) => e.toJson()).toList(),
    };
