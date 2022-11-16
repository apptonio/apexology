// ignore_for_file: invalid_annotation_target

import 'package:apexology/models/stats/legends/selected/selected.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'legends.freezed.dart';
part 'legends.g.dart';

@Freezed()
class Legends with _$Legends {
  @JsonSerializable(explicitToJson: true)
  const factory Legends({
    required Selected selected,
  }) = _Legends;

  factory Legends.fromJson(Map<String, dynamic> json) => _$LegendsFromJson(json);
}