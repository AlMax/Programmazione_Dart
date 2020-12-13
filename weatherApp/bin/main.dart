import 'api_client.dart';

void main(List<String> arguments) async {
  if (arguments.length != 1) {
    print('Syntax: dart bin/main.dart <city>');
    return;
  }

  final city = arguments.first;
  final api = WeatherApiClient();
  final locationId = await api.getLocationId(city);
  //print(locationId);
  final weatherLoc = await api.fetchWeather(locationId);
  print('\n$weatherLoc');

  final weather = await api.getWeather(city);
  print(weather);
}
