// ignore_for_file: invalid_annotation_target

import 'package:apexology/models/maps/arenas/arenas.dart';
import 'package:apexology/models/maps/arenas_ranked/arenas_ranked.dart';
import 'package:apexology/models/maps/battle_royale/battle_royale.dart';
import 'package:apexology/models/maps/ltm/ltm.dart';
import 'package:apexology/models/maps/ranked/ranked.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'maps.freezed.dart';
part 'maps.g.dart';

@Freezed()
class Maps with _$Maps {
  @JsonSerializable(explicitToJson: true)
  const factory Maps({
    @JsonKey(name: "battle_royale") required BattleRoyale battleRoyale,
    required Arenas arenas,
    required Ranked ranked,
    required ArenasRanked arenasRanked,
    required Ltm ltm,
  }) = _Maps;

  factory Maps.fromJson(Map<String, dynamic> json) => _$MapsFromJson(json);
}