// ignore_for_file: invalid_annotation_target

import 'package:apexology/models/stats/legends/selected/game_info/game_info.dart';
import 'package:apexology/models/stats/legends/selected/img_assets/img_assets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'data/data.dart';

part 'selected.freezed.dart';
part 'selected.g.dart';

@Freezed()
class Selected with _$Selected {
  @JsonSerializable(explicitToJson: true)
  const factory Selected(
      {@JsonKey(name: "LegendName") required String legendName,
      required List<Data> data,
      required GameInfo gameInfo,
      @JsonKey(name: "ImgAssets") required ImgAssets imgAssets}) = _Selected;

  factory Selected.fromJson(Map<String, dynamic> json) =>
      _$SelectedFromJson(json);
}
