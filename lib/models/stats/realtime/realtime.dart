// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'realtime.freezed.dart';
part 'realtime.g.dart';

@Freezed()
class Realtime with _$Realtime {
  @JsonSerializable(explicitToJson: true)
  const factory Realtime({
    required int isOnline,
    required int isInGame,
    required String selectedLegend,
    required String currentStateAsText
  }) = _Realtime;

  factory Realtime.fromJson(Map<String, dynamic> json) => _$RealtimeFromJson(json);
}