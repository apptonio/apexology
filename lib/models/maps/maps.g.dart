// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'maps.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Maps _$$_MapsFromJson(Map<String, dynamic> json) => _$_Maps(
      battleRoyale:
          BattleRoyale.fromJson(json['battle_royale'] as Map<String, dynamic>),
      arenas: Arenas.fromJson(json['arenas'] as Map<String, dynamic>),
      ranked: Ranked.fromJson(json['ranked'] as Map<String, dynamic>),
      arenasRanked:
          ArenasRanked.fromJson(json['arenasRanked'] as Map<String, dynamic>),
      ltm: Ltm.fromJson(json['ltm'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MapsToJson(_$_Maps instance) => <String, dynamic>{
      'battle_royale': instance.battleRoyale.toJson(),
      'arenas': instance.arenas.toJson(),
      'ranked': instance.ranked.toJson(),
      'arenasRanked': instance.arenasRanked.toJson(),
      'ltm': instance.ltm.toJson(),
    };
