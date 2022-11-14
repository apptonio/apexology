// ignore_for_file: invalid_annotation_target

import 'package:apexology/models/stats/global/arena/arena.dart';
import 'package:apexology/models/stats/global/rank/rank.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'global.freezed.dart';
part 'global.g.dart';

@Freezed()
class Global with _$Global {
  @JsonSerializable(explicitToJson: true)
  const factory Global({
    required String name,
    required String platform,
    required int level,
    required int toNextLevelPercent,
    required int levelPrestige,
    required Rank rank,
    required Arena arena
  }) = _Global;

  factory Global.fromJson(Map<String, dynamic> json) => _$GlobalFromJson(json);
}