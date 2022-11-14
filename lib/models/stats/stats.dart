// ignore_for_file: invalid_annotation_target

import 'package:apexology/models/stats/global/global.dart';
import 'package:apexology/models/stats/legends/legends.dart';
import 'package:apexology/models/stats/realtime/realtime.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'stats.freezed.dart';
part 'stats.g.dart';

@Freezed()
class Stats with _$Stats {
  @JsonSerializable(explicitToJson: true)
  const factory Stats({
    required Global global,
    required Realtime realtime,
    required Legends legends,
  }) = _Stats;

  factory Stats.fromJson(Map<String, dynamic> json) => _$StatsFromJson(json);
}