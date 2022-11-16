// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'next.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Next _$$_NextFromJson(Map<String, dynamic> json) => _$_Next(
      dateStart: json['readableDate_start'] as String,
      dateEnd: json['readableDate_end'] as String,
      map: json['map'] as String,
      asset: json['asset'] as String,
      eventName: json['eventName'] as String?,
    );

Map<String, dynamic> _$$_NextToJson(_$_Next instance) => <String, dynamic>{
      'readableDate_start': instance.dateStart,
      'readableDate_end': instance.dateEnd,
      'map': instance.map,
      'asset': instance.asset,
      'eventName': instance.eventName,
    };
