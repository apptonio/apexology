// ignore_for_file: invalid_annotation_target

import 'package:apexology/models/maps/battle_royale/current/current.dart';
import 'package:apexology/models/maps/battle_royale/next/next.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ltm.freezed.dart';
part 'ltm.g.dart';

@Freezed()
class Ltm with _$Ltm {
  @JsonSerializable(explicitToJson: true)
  const factory Ltm({
    required Current current,
    required Next next,
  }) = _Ltm;

  factory Ltm.fromJson(Map<String, dynamic> json) => _$LtmFromJson(json);
}