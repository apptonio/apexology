import 'dart:convert';

import 'package:apexology/models/bundles/bundles.dart';
import 'package:apexology/models/maps/maps.dart';
import 'package:apexology/models/stats/stats.dart';
import 'package:dio/dio.dart';
import 'package:apexology/constants/endpoints.dart';

import '../models/news/news.dart';

class HTTPInterceptor extends InterceptorsWrapper {
  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    // ignore: avoid_print
    print(err);
    return super.onError(err, handler);
  }
}

class HTTP {
  late Dio client;
  HTTP() {
    client = Dio(BaseOptions(
      baseUrl: MyEndpoints.baseUrl,
      receiveDataWhenStatusError: true,
      contentType: 'application/json',
      validateStatus: (status) => status! < 400,
    ));
    client.interceptors.add(
      HTTPInterceptor(),
    );
  }

  Future<List<News>> getNews() async {
    Response response = await client.get(MyEndpoints.news);
    var decodedString = json.decode(response.data);
    return (decodedString as List).map((data) => News.fromJson(data)).toList();
  }

  Future<Stats> getStats() async {
    Response response = await client.get(MyEndpoints.stats);
    var decodedString = json.decode(response.data);
    return Stats.fromJson(decodedString);
  }

  Future<Maps> getMaps() async {
    Response response = await client.get(MyEndpoints.maps);
    var decodedString = json.decode(response.data);
    return Maps.fromJson(decodedString);
  }

  Future<List<Bundles>> getBundles() async {
    Response response = await client.get(MyEndpoints.bundles);
    return (response.data as List)
        .map((data) => Bundles.fromJson(data))
        .toList();
  }
}

final http = HTTP();
