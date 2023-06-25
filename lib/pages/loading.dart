import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:flutter_weather/services/get_weather.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_weather/services/get_countries.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void setupWeather() async {
    GetWeather instance = GetWeather(locationurl: 'Santiago-del-Estero');
    await instance.getWeather();
    GetCountries allCountries = GetCountries();
    await allCountries.getCountries();

    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'temperature': instance.temperature,
      'thermal': instance.thermal,
      'location': instance.location,
      'country': instance.country,
      'localtime': instance.localtime,
      'sky': instance.sky,
      'icon': instance.icon,
      'countries': allCountries.countries
    });
  }

  @override
  void initState() {
    super.initState();
    setupWeather();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.blue.shade900,
          size: 70.0,
        ),
      ),
    );
  }
}
