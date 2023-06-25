import 'package:flutter/material.dart';


class WeatherHome extends StatefulWidget {
  const WeatherHome({super.key});

  @override
  State<WeatherHome> createState() => _WeatherHomeState();
}

class _WeatherHomeState extends State<WeatherHome> {

  int temperature = 1;

  @override
  Widget build(BuildContext context) {
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
            temperature += 1;
          });
        },
        child: Icon(Icons.add),
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
                const Text(
                  'Santiago del Estero',
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
                  '$temperature °C',
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
                const Text(
                  '5°C',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 24.0,
                  ),
                ),
                const SizedBox(height: 30.0,),
                const Text(
                    'Sky'
                ),
                const Row(
                  children: <Widget>[
                    Icon(
                      Icons.sunny,
                      color: Colors.amber,
                    ),
                    SizedBox(width: 10.0,),
                    Text(
                      'Clear',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 24.0
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30.0,),
                TextButton(
                    onPressed: () {
                      print('hello');
                    },
                    child: Text('Change Location')
                )
              ]
          )
      ),
    );
  }
}