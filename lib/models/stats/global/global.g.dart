// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'global.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Global _$$_GlobalFromJson(Map<String, dynamic> json) => _$_Global(
      name: json['name'] as String,
      platform: json['platform'] as String,
      level: json['level'] as int,
      toNextLevelPercent: json['toNextLevelPercent'] as int,
      levelPrestige: json['levelPrestige'] as int,
      rank: Rank.fromJson(json['rank'] as Map<String, dynamic>),
      arena: Arena.fromJson(json['arena'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GlobalToJson(_$_Global instance) => <String, dynamic>{
      'name': instance.name,
      'platform': instance.platform,
      'level': instance.level,
      'toNextLevelPercent': instance.toNextLevelPercent,
      'levelPrestige': instance.levelPrestige,
      'rank': instance.rank.toJson(),
      'arena': instance.arena.toJson(),
    };
