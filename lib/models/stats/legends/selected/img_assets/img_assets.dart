// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'img_assets.freezed.dart';
part 'img_assets.g.dart';

@Freezed()
class ImgAssets with _$ImgAssets {
  @JsonSerializable(explicitToJson: true)
  const factory ImgAssets({
    required String icon,
    required String banner,
  }) = _ImgAssets;

  factory ImgAssets.fromJson(Map<String, dynamic> json) => _$ImgAssetsFromJson(json);
}