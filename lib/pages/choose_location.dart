import 'package:flutter/material.dart';
import 'package:flutter_weather/services/get_weather.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}
Map data = {};

class _ChooseLocationState extends State<ChooseLocation> {



  @override
  Widget build(BuildContext context) {

    data = ModalRoute.of(context)!.settings.arguments as Map;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[200],
          title: Text('Choose a City'),
          centerTitle: true,
          elevation: 0.0,
        ),
        body: ListView.builder(
            itemCount: data['cities'].length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  onTap: () async {
                    GetWeather instance = GetWeather(locationurl: data['cities'][index]['name']);
                    await instance.getWeather();
                    Navigator.pop(context, {
                      'temperature': instance.temperature,
                      'thermal': instance.thermal,
                      'location': instance.location,
                      'country': instance.country,
                      'localtime': instance.localtime,
                      'sky': instance.sky,
                      'icon': instance.icon,
                      'countries': data['countries']
                    });
                  },
                  title: Text(data['cities'][index]['name']),
                ),
              );
            }
        )
    );
  }
}
