import 'package:flutter/material.dart';
import 'package:flutter_weather/services/get_cities.dart';

class ChooseCountry extends StatefulWidget {
  const ChooseCountry({super.key});

  @override
  State<ChooseCountry> createState() => _ChooseCountryState();
}
Map data = {};

class _ChooseCountryState extends State<ChooseCountry> {



  @override
  Widget build(BuildContext context) {

    data = ModalRoute.of(context)!.settings.arguments as Map;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        title: Text('Choose a Country'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: ListView.builder(
          itemCount: 140,
          itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              onTap: () async {
                GetCities instance = GetCities(country: data['countries'][index]['cca2']);
                await instance.getCities();
                dynamic result = await Navigator.pushNamed(context, '/cities', arguments: {'cities': instance.cities, 'countries': data['countries']});
                Navigator.pop(context, {
                  'temperature': result['temperature'],
                  'thermal': result['thermal'],
                  'location': result['location'],
                  'country': result['country'],
                  'localtime': result['localtime'],
                  'sky': result['sky'],
                  'icon': result['icon'],
                  'countries': result['countries']
                });
                },
              title: Text(data['countries'][index]['name']['common']),
            ),
          );
          }
      )
    );
  }
}
