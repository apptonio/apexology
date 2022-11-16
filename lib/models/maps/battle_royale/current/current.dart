// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'current.freezed.dart';
part 'current.g.dart';

@Freezed()
class Current with _$Current {
  @JsonSerializable(explicitToJson: true)
  const factory Current({
    @JsonKey(name: "readableDate_start") required String dateStart,
    @JsonKey(name: "readableDate_end") required String dateEnd,
    required String map,
    required String asset,
    required String? eventName,
  }) = _Current;

  factory Current.fromJson(Map<String, dynamic> json) => _$CurrentFromJson(json);
}