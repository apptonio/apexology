// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'news.freezed.dart';
part 'news.g.dart';

@Freezed()
class News with _$News {
  @JsonSerializable(explicitToJson: true)
  const factory News({
    required String title,
    required String link,
    required String img,
    @JsonKey(name: "short_desc") required String shortDesc,
  }) = _News;

  factory News.fromJson(Map<String, dynamic> json) => _$NewsFromJson(json);
}