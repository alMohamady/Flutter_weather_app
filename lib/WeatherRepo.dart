import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:wether_app/WeatherModel.dart';


class WeatherRepo {

  Future<WeatherModel> getWeather(String city) async {
    final resul = await http.Client().get(
        "https://api.openweathermap.org/data/2.5/weather?q=$city&APPID=43ea6baaad7663dc17637e22ee6f78f2");

    if (resul.statusCode == 200) {
      throw Exception();
    }
  }

  WeatherModel parsedJson(final response) {
    final jsonDecoded = json.decode(response);

    final jsonWeather = jsonDecoded("main");

    return WeatherModel.fromJson(jsonWeather);
  }
}