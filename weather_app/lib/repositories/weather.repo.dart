import 'package:flutter/material.dart';
import 'package:weather_app/models/weather.model.dart';
import 'package:weather_app/repositories/weather_api_client.repo.dart';

class WeatherRepository {
  final WeatherApiClient weatherApiClient;

  WeatherRepository({@required this.weatherApiClient})
      : assert(weatherApiClient != null);

  Future<Weather> getWeather(String city) async {
    print('city in getWeaher: $city');

    final int locationId = await weatherApiClient.getLocationId(city);
    print('locationId $locationId');
    return weatherApiClient.fetchWeahter(locationId);
  }
}
