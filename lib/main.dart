import 'package:flutter/material.dart';
import 'package:flutter_weather/pages/choose_country.dart';
import 'package:flutter_weather/pages/home.dart';
import 'package:flutter_weather/pages/loading.dart';
import 'package:flutter_weather/pages/choose_location.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      '/': (context) => WeatherHome(),
      '/home': (context) => WeatherHome(),

    },
  ));
}


