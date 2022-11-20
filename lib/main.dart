import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/pages/home_page.dart';
import 'package:weather_app/provider/weather_provider.dart';

void main() {
 runApp(MultiProvider(
     providers: [
       ChangeNotifierProvider(create: (context)=> WeatherProvider() )
     ],
     child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weather App',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
     initialRoute: HomePage.routeName,
      routes: {
      HomePage.routeName:(context) => HomePage()
      },
    );
  }
}

