import 'package:flutter/material.dart';


class WeatherHome extends StatefulWidget {
  const WeatherHome({super.key});

  @override
  State<WeatherHome> createState() => _WeatherHomeState();
}

class _WeatherHomeState extends State<WeatherHome> {

  Map data = {};

  @override
  Widget build(BuildContext context) {

    data = ModalRoute.of(context)!.settings.arguments as Map;
    print(data);

    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: const Text('Weather Now'),
        centerTitle: true,
        backgroundColor: Colors.blue[200],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {

          });
        },
        child: Icon(Icons.location_on),
      ),
      body: Padding(
          padding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 0.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  'Province',
                  style: TextStyle(
                      color: Colors.black87
                  ),
                ),
                 Text(data['location'],
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 24.0,
                  ),
                ),
                SizedBox(height: 30.0,),
                const Text(
                  'Temperature',
                  style: TextStyle(
                      color: Colors.black87
                  ),
                ),
                Text(
                  '${data['temperature']} °C',
                  style: const TextStyle(
                    color: Colors.black87,
                    fontSize: 24.0,
                  ),
                ),
                const SizedBox(height: 30.0,),
                const Text(
                  'Thermal Sensation',
                  style: TextStyle(
                      color: Colors.black87
                  ),
                ),
                 Text(
                  '${data['thermal']} °C',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 24.0,
                  ),
                ),
                const SizedBox(height: 30.0,),
                const Text(
                    'Sky'
                ),
                 Row(
                  children: <Widget>[
                    Icon(
                      Icons.sunny,
                      color: Colors.amber,
                    ),
                    SizedBox(width: 10.0,),
                    Text(
                      data['sky'],
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 24.0
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30.0,),

              ]
          )
      ),
    );
  }
}