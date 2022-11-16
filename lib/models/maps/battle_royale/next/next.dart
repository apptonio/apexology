// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'next.freezed.dart';
part 'next.g.dart';

@Freezed()
class Next with _$Next {
  @JsonSerializable(explicitToJson: true)
  const factory Next({
    @JsonKey(name: "readableDate_start") required String dateStart,
    @JsonKey(name: "readableDate_end") required String dateEnd,
    required String map,
    required String asset,
    required String? eventName,
  }) = _Next;

  factory Next.fromJson(Map<String, dynamic> json) => _$NextFromJson(json);
}