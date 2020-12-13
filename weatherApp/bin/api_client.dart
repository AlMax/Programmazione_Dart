import 'dart:convert';

import 'package:http/http.dart' as http;

import 'weather.dart';

class WeatherApiClient {
  static const baseUrl = 'https://www.metaweather.com/api';

  Future<int> getLocationId(String city) async {
    final locationUrl = '$baseUrl/location/search/?query=$city';
    final locationResponse = await http.get(locationUrl);

    if (locationResponse.statusCode != 200) {
      throw Exception('Errore nella ricerca della citta: $city');
    }

    final locationJson = jsonDecode((locationResponse.body)) as List;
    return locationJson.first['woeid'] as int;
  }

  Future<Weather> fetchWeather(int locationId) async {
    final weatherUrl = '$baseUrl/location/$locationId';
    final weatherResponse = await http.get(weatherUrl);

    if (weatherResponse.statusCode != 200) {
      throw Exception('Errore nella ricerca con ID citta: $locationId');
    }

    //print(weatherResponse.body);
    final weatherJson = jsonDecode(weatherResponse.body);
    final consolidatedWeather = weatherJson['consolidated_weather']
        as List; //Il Json restituito è una mappa e questo è il primo valore
    return Weather.fromJson(consolidatedWeather[
        0]); //Il primo elemnto dell'array, è la mappa con i dettagli di oggi
  }

  Future<Weather> getWeather(String city) async {
    final locationId = await getLocationId(city);
    return fetchWeather(locationId);
  }
}
