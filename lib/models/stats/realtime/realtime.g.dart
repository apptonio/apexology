// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'realtime.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Realtime _$$_RealtimeFromJson(Map<String, dynamic> json) => _$_Realtime(
      isOnline: json['isOnline'] as int,
      isInGame: json['isInGame'] as int,
      selectedLegend: json['selectedLegend'] as String,
      currentStateAsText: json['currentStateAsText'] as String,
    );

Map<String, dynamic> _$$_RealtimeToJson(_$_Realtime instance) =>
    <String, dynamic>{
      'isOnline': instance.isOnline,
      'isInGame': instance.isInGame,
      'selectedLegend': instance.selectedLegend,
      'currentStateAsText': instance.currentStateAsText,
    };
