import 'dart:io';
import 'package:flutter/material.dart';
import 'package:counseling_flutter/main.dart';
import 'package:counseling_flutter/src/helper/AppConfig.dart';

void main() {
  const String port = '3000';
  final String baseUrl = Platform.isAndroid
      ? 'http://localhost:' + port
      : 'http://localhost:' + port;

  final String dataUrl = '$baseUrl/api/v1';

  final appConfig = AppConfig(
    baseUrl: baseUrl,
    dataUrl: dataUrl,
    buildFlavor: 'dev',
  );

  runApp(MyApp(appConfig));
}
