import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: WeatherHome(),
  ));
}

class WeatherHome extends StatelessWidget {
  const WeatherHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather'),
      ),
    );
  }
}
