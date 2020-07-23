import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:tennist_flutter/pages/account/signup/SignUp.model.dart';
import 'package:tennist_flutter/src/helper/AppConfig.dart';
import 'package:tennist_flutter/src/model/Error.model.dart';

class SignUpProvider with ChangeNotifier {
  AppConfig _appConfig;
  AppConfig get appConfig => _appConfig;

  set appConfig(AppConfig appConfigVal) {
    if (_appConfig != appConfigVal) {
      _appConfig = appConfigVal;
      notifyListeners();
    }
  }

  Future<dynamic> signUp(data) async {
    try {
      Map<String, String> headers = {
        "Content-Type": "application/json",
      };
      final String url = 'http://localhost:3000/api/v1/auth/signup';
      // final String url = '${appConfig.baseUrl}/signup';

      final http.Response response =
          await http.post(url, headers: headers, body: json.encode(data));

      if (response.statusCode == 200) {
        final resultModel = signUpModelFromJson(response.body);

        return resultModel.result;
      }
      final errorModel = errorModelFromJson(response.body);

      return errorModel.result;
    } catch (e) {
      print(e);
      return null;
      // throw (e);
    }
  }
}
