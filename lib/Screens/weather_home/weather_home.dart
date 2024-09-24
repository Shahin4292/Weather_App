import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/Model/weather_model.dart';
import 'package:weather_app/Services/services.dart';

import '../weather_details/weather_details.dart';

class WeatherHome extends StatefulWidget {
  const WeatherHome({super.key});

  @override
  State<WeatherHome> createState() => _WeatherHomeState();
}

class _WeatherHomeState extends State<WeatherHome> {
  late WeatherData weatherInfo;

  myWeather() {
    WeatherService().fetchWeather().then((value) {
      setState(() {
        weatherInfo = value;
      });
    });
  }

  @override
  void initState() {
    myWeather();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String formattedDate = DateFormat('EEEE D, MMMM, yyyy').format(DateTime.now());
    String formattedTime = DateFormat('hh:mm a').format(DateTime.now());
    return Scaffold(
      backgroundColor: const Color(0xFF676BD0),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: WeatherDetails(
                weather: weatherInfo,
                formattedDate: 'formattedDate',
                formattedTime: 'formattedTime',
              ),
            )
          ],
        ),
      ),
    );
  }
}
