import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:flutter_task3/WeatherModel.dart';

class WeatherGet {
  Future<WeatherModel> getWeather(String city) async {
    final Uri url = Uri.parse('https://api.openweathermap.org/data/2.5/weather?q=$city&APPID=915d4676ee5c3ca47c33631069748c75');
    final result = await http.post(url);

    if (result.statusCode != 200)
      throw Exception();

    return parsedJson(result.body);
  }

  WeatherModel parsedJson(final response) {
    final jsonDecoded = json.decode(response);

    final jsonWeather = jsonDecoded["main"];

    return WeatherModel.fromJson(jsonWeather);
  }
  

}