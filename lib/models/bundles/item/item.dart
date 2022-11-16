// ignore_for_file: invalid_annotation_target

import 'package:apexology/models/bundles/item/item_type/item_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'item.freezed.dart';
part 'item.g.dart';

@Freezed()
class Item with _$Item {
  @JsonSerializable(explicitToJson: true)
  const factory Item({
    required String item,
    required int cost,
    required ItemType itemType,
  }) = _Item;

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}