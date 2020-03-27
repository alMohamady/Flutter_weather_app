import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:wether_app/WeatherModel.dart';


class WeatherRepo {

  Future<WeatherModel> getWeather(String city) async {
    final result = await http.Client().get("https://api.openweathermap.org/data/2.5/weather?q=$city&APPID=64a9a079e7a2770ebb2a83eff61a0600");

    if (result.statusCode != 200) {
      throw Exception();
    }

    return parsedJson(result.body);
  }

  WeatherModel parsedJson(final response) {
    final jsonDecoded = json.decode(response);

    final jsonWeather = jsonDecoded["main"];

    return WeatherModel.fromJson(jsonWeather);
  }
}


