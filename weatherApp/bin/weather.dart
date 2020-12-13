import 'dart:math';

class Weather {
  const Weather({
    required this.state,
    required this.minT,
    required this.maxT,
    required this.temp,
  });

  final String state;
  final double minT;
  final double maxT;
  final double temp;

  factory Weather.fromJson(Map<String, Object> json) => Weather(
        state: json['weather_state_name'] as String,
        minT: json['min_temp'] as double,
        maxT: json['max_temp'] as double,
        temp: json['the_temp'] as double,
      );

  @override
  String toString() => '''
Current Temp: ${temp.toStringAsFixed(0)}°C
Condizion:    $state
Min:          ${minT.toStringAsFixed(0)}°C
Max:          ${maxT.toStringAsFixed(0)}°C
  ''';
}
