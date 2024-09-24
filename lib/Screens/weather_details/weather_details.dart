
import 'package:flutter/material.dart';

import '../../Model/weather_model.dart';

class WeatherDetails extends StatelessWidget {
  final String formattedDate;
  final String formattedTime;
  final WeatherData weather;

  const WeatherDetails(
      {super.key,
      required this.weather,
      required this.formattedDate,
      required this.formattedTime});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          weather.name,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        Text(
          "${weather.temperature.current.toStringAsFixed(2)}°C",
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 25,
          ),
        ),
        Text(
          weather.weather[0].main,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}
