// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'battle_royale.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BattleRoyale _$$_BattleRoyaleFromJson(Map<String, dynamic> json) =>
    _$_BattleRoyale(
      current: Current.fromJson(json['current'] as Map<String, dynamic>),
      next: Next.fromJson(json['next'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_BattleRoyaleToJson(_$_BattleRoyale instance) =>
    <String, dynamic>{
      'current': instance.current.toJson(),
      'next': instance.next.toJson(),
    };
