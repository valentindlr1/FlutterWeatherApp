import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';


class GetWeather {
  String? temperature;
  String? thermal;
  String? location;
  String? locationurl;
  String? country;
  String? localtime;
  String? sky;
  String? icon;

  GetWeather({ this.locationurl });

  Future<void> getWeather() async {

    try{
      Response response = await get(Uri.parse('http://api.weatherapi.com/v1/current.json?key=f18bd25fa91244b096904759232306&q=$locationurl&aqi=no'));
      Map data = jsonDecode(response.body);

      temperature = data['current']['temp_c'].toString();
      thermal = data['current']['feelslike_c'].toString();
      location = data['location']['name'];
      country = data['location']['country'];
      localtime = data['location']['localtime'];
      sky = data['current']['condition']['text'];
      icon = data['current']['condition']['icon'];
      print('ICONO: $icon');
    }
    catch(error){
      print('ERROR: $error');
      temperature = 'could not get info';
    }
  }
}