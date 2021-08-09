import 'package:flutter/material.dart';
import 'package:osusala/constraints.dart';
import 'package:osusala/screens/about.dart';
import 'package:osusala/screens/home/home_screen.dart';
import 'package:osusala/screens/location/location_map.dart';
import 'package:osusala/screens/get_started/get_started.dart';
import 'package:osusala/screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Homescreen(), // MapScreen() Homescreen() GetStartedScreen(),
      title: 'Osusala',
      routes: {
        '/': (context) => SplashScreen(),
        '/getst': (context) => GetStartedScreen(),
        '/home': (context) => HomeScreen(),
        '/location': (context) => MapScreen(),
        '/about': (context) => About(),
      },
      theme: ThemeData(
        scaffoldBackgroundColor: oLightColor,
        primaryColor: oDarkColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: oDarkColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}
