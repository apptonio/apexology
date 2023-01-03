// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'selected.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Selected _$$_SelectedFromJson(Map<String, dynamic> json) => _$_Selected(
      legendName: json['LegendName'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
      gameInfo: GameInfo.fromJson(json['gameInfo'] as Map<String, dynamic>),
      imgAssets: ImgAssets.fromJson(json['ImgAssets'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SelectedToJson(_$_Selected instance) =>
    <String, dynamic>{
      'LegendName': instance.legendName,
      'data': instance.data.map((e) => e.toJson()).toList(),
      'gameInfo': instance.gameInfo.toJson(),
      'ImgAssets': instance.imgAssets.toJson(),
    };
