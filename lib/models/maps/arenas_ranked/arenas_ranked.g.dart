// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'arenas_ranked.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ArenasRanked _$$_ArenasRankedFromJson(Map<String, dynamic> json) =>
    _$_ArenasRanked(
      current: Current.fromJson(json['current'] as Map<String, dynamic>),
      next: Next.fromJson(json['next'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ArenasRankedToJson(_$_ArenasRanked instance) =>
    <String, dynamic>{
      'current': instance.current.toJson(),
      'next': instance.next.toJson(),
    };
