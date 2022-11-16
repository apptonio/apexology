// ignore_for_file: invalid_annotation_target

import 'package:apexology/models/bundles/item/item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bundles.freezed.dart';
part 'bundles.g.dart';

@Freezed()
class Bundles with _$Bundles {
  @JsonSerializable(explicitToJson: true)
  const factory Bundles({
    required String bundle,
    required String? startDate,
    required String? endDate,
    required String bundleType,
    required List<Item> bundleContent
  }) = _Bundles;

  factory Bundles.fromJson(Map<String, dynamic> json) => _$BundlesFromJson(json);
}