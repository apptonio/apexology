// ignore_for_file: invalid_annotation_target

import 'package:apexology/models/maps/battle_royale/current/current.dart';
import 'package:apexology/models/maps/battle_royale/next/next.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'arenas.freezed.dart';
part 'arenas.g.dart';

@Freezed()
class Arenas with _$Arenas {
  @JsonSerializable(explicitToJson: true)
  const factory Arenas({
    required Current current,
    required Next next
  }) = _Arenas;

  factory Arenas.fromJson(Map<String, dynamic> json) => _$ArenasFromJson(json);
}