// ignore_for_file: invalid_annotation_target

import 'package:apexology/models/maps/battle_royale/current/current.dart';
import 'package:apexology/models/maps/battle_royale/next/next.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'battle_royale.freezed.dart';
part 'battle_royale.g.dart';

@Freezed()
class BattleRoyale with _$BattleRoyale {
  @JsonSerializable(explicitToJson: true)
  const factory BattleRoyale({
    required Current current,
    required Next next,
  }) = _BattleRoyale;

  factory BattleRoyale.fromJson(Map<String, dynamic> json) => _$BattleRoyaleFromJson(json);
}