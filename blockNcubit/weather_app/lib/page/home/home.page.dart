import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/weather.cubit.dart';
import 'package:weather_app/page/setting/setting.page.dart';
import 'package:weather_app/page/search/search.page.dart';
import 'package:weather_app/repositories/weather.repo.dart';
import 'package:weather_app/repositories/weather_api_client.repo.dart';
import 'package:dio/dio.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Completer<void> _refreshCompleter;
  String city;

  @override
  void initState() {
    _refreshCompleter = Completer<void>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Weather'),
          actions: [
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SettingPage();
                    },
                  ),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () async {
                city = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SearchPage();
                    },
                  ),
                );
                if (city != null) {
                  BlocProvider.of<WeatherCubit>(context).fetchWeather(city);
                }
              },
            ),
          ],
        ),
        body: BlocConsumer<WeatherCubit, WeatherState>(
          listener: (context, state) {
            if (state.weather != null) {
              _refreshCompleter?.complete();
              _refreshCompleter = Completer();
            }
          },
          builder: (context, state) {
            if (state == WeatherCubit.initalWeatherState) {
              return Center(
                child: Text(
                  'Select a city',
                  style: TextStyle(fontSize: 18.0),
                ),
              );
            }

            if (state.loading) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }

            if (state.weather != null) {
              return RefreshIndicator(
                onRefresh: () {
                  if (city != null) {
                    BlocProvider.of<WeatherCubit>(context).fetchWeather(city);
                  }
                  return _refreshCompleter.future;
                },
                child: ListView(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 6,
                    ),
                    Text(
                      state.weather.city,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      '${TimeOfDay.fromDateTime(state.weather.lastUpdated).format(context)}',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                    SizedBox(
                      height: 60.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${state.weather.theTemp.toStringAsFixed(2)}C',
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'maxTemp: ${state.weather.maxTemp.toStringAsFixed(2)}C',
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                            Text(
                              'minTemp: ${state.weather.minTemp.toStringAsFixed(2)}C',
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      '${state.weather.weatherStateName}',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 32.0),
                    )
                  ],
                ),
              );
            }

            return Center(
              child: Text(
                state.error,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.red,
                ),
              ),
            );
          },
        ));
  }
}
