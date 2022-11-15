// ignore_for_file: invalid_annotation_target

import 'package:apexology/models/maps/battle_royale/current/current.dart';
import 'package:apexology/models/maps/battle_royale/next/next.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ranked.freezed.dart';
part 'ranked.g.dart';

@Freezed()
class Ranked with _$Ranked {
  @JsonSerializable(explicitToJson: true)
  const factory Ranked({
    required Current current,
    required Next next,
  }) = _Ranked;

  factory Ranked.fromJson(Map<String, dynamic> json) => _$RankedFromJson(json);
}