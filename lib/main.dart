import 'package:flutter/material.dart';
import 'package:osusala/constraints.dart';
import 'package:osusala/screens/Products/components/products.dart';
import 'package:osusala/screens/about.dart';
import 'package:osusala/screens/home/home_screen.dart';
import 'package:osusala/screens/location/location_map.dart';
import 'package:osusala/screens/get_started/get_started.dart';
import 'package:osusala/screens/splash_screen.dart';
import 'package:osusala/screens/Products/home_categories.dart';

import 'screens/Products/components/cart.dart';
import 'screens/chat/components/chat.dart';

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
        '/home_categories': (context) => CategoriesMenu(),
        '/Products': (context) => Products(),
        '/chat': (context) => Chat(),
        '/cart': (context) => Cart(),
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
