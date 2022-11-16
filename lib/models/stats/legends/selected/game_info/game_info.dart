// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_info.freezed.dart';
part 'game_info.g.dart';

@Freezed()
class GameInfo with _$GameInfo {
  @JsonSerializable(explicitToJson: true)
  const factory GameInfo({
    required String skin,
    required String skinRarity,
    required String frame,
    required String frameRarity,
    required String pose,
    required String poseRarity,
  }) = _GameInfo;

  factory GameInfo.fromJson(Map<String, dynamic> json) => _$GameInfoFromJson(json);
}