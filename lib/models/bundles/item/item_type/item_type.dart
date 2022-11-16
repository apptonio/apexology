// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_type.freezed.dart';
part 'item_type.g.dart';

@Freezed()
class ItemType with _$ItemType {
  @JsonSerializable(explicitToJson: true)
  const factory ItemType({
    required String name,
    required String rarity,
    required String asset,
    required String rarityHex
  }) = _ItemType;

  factory ItemType.fromJson(Map<String, dynamic> json) => _$ItemTypeFromJson(json);
}