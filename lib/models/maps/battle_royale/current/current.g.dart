// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'current.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Current _$$_CurrentFromJson(Map<String, dynamic> json) => _$_Current(
      dateStart: json['readableDate_start'] as String,
      dateEnd: json['readableDate_end'] as String,
      map: json['map'] as String,
      asset: json['asset'] as String,
      eventName: json['eventName'] as String?,
    );

Map<String, dynamic> _$$_CurrentToJson(_$_Current instance) =>
    <String, dynamic>{
      'readableDate_start': instance.dateStart,
      'readableDate_end': instance.dateEnd,
      'map': instance.map,
      'asset': instance.asset,
      'eventName': instance.eventName,
    };
