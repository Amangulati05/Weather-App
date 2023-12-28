import 'package:flutter/material.dart';

void main() {
  runApp(WeatherApp());
}

class WeatherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WeatherHomePage(),
    );
  }
}

class WeatherHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ambala Weather'),
      ),
      body: WeatherInfo(),
    );
  }
}

class WeatherInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Ambala',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Icon(
            Icons.wb_sunny, // Replace with appropriate weather icon
            size: 100,
            color: Colors.orange,
          ),
          SizedBox(height: 20),
          Text(
            '24°C', // Replace with actual temperature
            style: TextStyle(fontSize: 48),
          ),
          SizedBox(height: 10),
          Text(
            'Partly Cloudy', // Replace with actual weather description
            style: TextStyle(fontSize: 24),
          ),
        ],
      ),
    );
  }
}
