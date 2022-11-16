// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'data.freezed.dart';
part 'data.g.dart';

@Freezed()
class Data with _$Data {
  @JsonSerializable(explicitToJson: true)
  const factory Data({
    required String name,
    required int value,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}