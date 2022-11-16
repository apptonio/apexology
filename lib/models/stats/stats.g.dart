// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Stats _$$_StatsFromJson(Map<String, dynamic> json) => _$_Stats(
      global: Global.fromJson(json['global'] as Map<String, dynamic>),
      realtime: Realtime.fromJson(json['realtime'] as Map<String, dynamic>),
      legends: Legends.fromJson(json['legends'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_StatsToJson(_$_Stats instance) => <String, dynamic>{
      'global': instance.global.toJson(),
      'realtime': instance.realtime.toJson(),
      'legends': instance.legends.toJson(),
    };
