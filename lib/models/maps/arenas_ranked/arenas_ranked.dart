// ignore_for_file: invalid_annotation_target

import 'package:apexology/models/maps/battle_royale/current/current.dart';
import 'package:apexology/models/maps/battle_royale/next/next.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'arenas_ranked.freezed.dart';
part 'arenas_ranked.g.dart';

@Freezed()
class ArenasRanked with _$ArenasRanked {
  @JsonSerializable(explicitToJson: true)
  const factory ArenasRanked({
    required Current current,
    required Next next
  }) = _ArenasRanked;

  factory ArenasRanked.fromJson(Map<String, dynamic> json) => _$ArenasRankedFromJson(json);
}