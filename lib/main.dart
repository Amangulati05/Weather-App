import 'package:flutter/material.dart';
void main () {
  runApp(MyWeatherApp());

}
 class MyWeatherApp extends StatelessWidget{
  @override
  Widgetbuild(BuildContext context) {
    return MaterialApp(
      title: 'WeatherApp',
      theme: ThemeData (
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity

      ),
      home: WeatherScreen(),
    );
  }

}

class WeatherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('MyWeatherApp'),
          centerTitle: true,

        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Ambala',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,


                  ),
                ),

                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Humidity'),
                    Text('80%'),


                  ],
                ),
                Column(
                  children: [
                    Text('pressure'),
                    Text('1012 hPa'),

                  ],
                ),
              ]
          ),
        )

    );
  }
