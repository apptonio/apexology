// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'rank.freezed.dart';
part 'rank.g.dart';

@Freezed()
class Rank with _$Rank {
  @JsonSerializable(explicitToJson: true)
  const factory Rank({
    required int rankScore,
    required String rankName,
    required String rankImg,
  }) = _Rank;

  factory Rank.fromJson(Map<String, dynamic> json) => _$RankFromJson(json);
}