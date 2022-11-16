// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Item _$$_ItemFromJson(Map<String, dynamic> json) => _$_Item(
      item: json['item'] as String,
      cost: json['cost'] as int,
      itemType: ItemType.fromJson(json['itemType'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ItemToJson(_$_Item instance) => <String, dynamic>{
      'item': instance.item,
      'cost': instance.cost,
      'itemType': instance.itemType.toJson(),
    };
