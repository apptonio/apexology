// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ranked.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Ranked _$$_RankedFromJson(Map<String, dynamic> json) => _$_Ranked(
      current: Current.fromJson(json['current'] as Map<String, dynamic>),
      next: Next.fromJson(json['next'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RankedToJson(_$_Ranked instance) => <String, dynamic>{
      'current': instance.current.toJson(),
      'next': instance.next.toJson(),
    };
