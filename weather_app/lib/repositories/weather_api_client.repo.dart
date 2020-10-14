import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:weather_app/models/weather.model.dart';

class WeatherApiClient {
  static const String baseUrl = 'https://www.metaweather.com';
  final Dio dioClient;

  WeatherApiClient({@required this.dioClient}) : assert(dioClient != null);

  Future<int> getLocationId(String city) async {
    final String url = '$baseUrl/api/location/search/?query=$city';

    final Response response = await dioClient.get(url,
        options: Options(responseType: ResponseType.plain));
    if (response.statusCode != 200) {
      throw Exception('$city의 로케이션 아이디를 가져올 수 없습니다.');
    }
    final responseBody = json.decode(response.data);
    if (responseBody.isEmpty) {
      throw Exception('해당 $city 는 존재하지 않는 도시입니다.');
    }

    return responseBody[0]['woeid'];
  }

  Future<Weather> fetchWeahter(int locationId) async {
    final url = '$baseUrl/api/location/$locationId';

    final Response response = await dioClient.get(url,
        options: Options(responseType: ResponseType.plain));
    if (response.statusCode != 200) {
      throw Exception('로케이션 아이디 $locationId 의 날씨 정보를  가져올 수 없습니다.');
    }
    final responseBody = json.decode(response.data);
    final Weather weather = Weather.fromJson(responseBody);
    print(weather.toJson());
    return weather;
  }
}
