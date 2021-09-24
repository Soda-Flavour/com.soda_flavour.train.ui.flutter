import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/models/weather.model.dart';
import 'package:weather_app/repositories/weather.repo.dart';

class WeatherState extends Equatable {
  final bool loading;
  final Weather weather;
  final String error;

  WeatherState({
    this.loading,
    this.weather,
    this.error,
  });

  WeatherState copyWith({
    bool loading,
    Weather weather,
    String error,
  }) {
    return WeatherState(
      loading: loading ?? this.loading,
      weather: weather ?? this.weather,
      error: error ?? this.error,
    );
  }

  @override
  List<Object> get props => [loading, weather, error];
}

class WeatherCubit extends Cubit<WeatherState> {
  final WeatherRepository weatherRepository;
  static WeatherState initalWeatherState = WeatherState();

  WeatherCubit(this.weatherRepository) : super(initalWeatherState);

  void fetchWeather(String city) async {
    emit(state.copyWith(loading: true));

    try {
      final Weather weather = await weatherRepository.getWeather(city);
      print('weather in WeatherCubit: ${weather.toJson()}');

      emit(state.copyWith(
        loading: false,
        weather: weather,
        error: null,
      ));
    } catch (_) {
      emit(
        state.copyWith(
          loading: false,
          error: 'Can not fetch the weather of the $city',
        ),
      );
    }
  }
}
