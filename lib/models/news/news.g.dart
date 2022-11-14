// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_News _$$_NewsFromJson(Map<String, dynamic> json) => _$_News(
      title: json['title'] as String,
      link: json['link'] as String,
      img: json['img'] as String,
      shortDesc: json['short_desc'] as String,
    );

Map<String, dynamic> _$$_NewsToJson(_$_News instance) => <String, dynamic>{
      'title': instance.title,
      'link': instance.link,
      'img': instance.img,
      'short_desc': instance.shortDesc,
    };
