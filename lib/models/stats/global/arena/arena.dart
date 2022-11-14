// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'arena.freezed.dart';
part 'arena.g.dart';

@Freezed()
class Arena with _$Arena {
  @JsonSerializable(explicitToJson: true)
  const factory Arena({
    required int rankScore,
    required String rankName,
    required String rankImg,
  }) = _Arena;

  factory Arena.fromJson(Map<String, dynamic> json) => _$ArenaFromJson(json);
}