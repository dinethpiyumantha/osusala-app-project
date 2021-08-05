import 'dart:async';

import 'package:flutter/material.dart';
import 'package:osusala/constraints.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed('/getst');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: oLightColor,
      body: Container(
        padding: EdgeInsets.all(50),
        color: oLightColor,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image.asset(
                'assets/images/dark-logo@2x.png',
                height: 120,
              ),
              Text(
                'rdcH Tiqi,',
                style: TextStyle(
                  fontFamily: 'Sinhala',
                  fontSize: 16,
                  color: oPrimaryColor,
                ),
              ),
              Text(
                'mur xrry',
                style: TextStyle(
                  fontFamily: 'Tamil',
                  fontSize: 16,
                  color: oPrimaryColor,
                ),
              ),
              Text(
                'RAJYA OSUSALA',
                style: TextStyle(
                  fontFamily: defaltFontFamily,
                  color: oPrimaryColor,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40),
                child: SpinKitRing(
                  color: oPrimaryColor,
                  size: 35.0,
                  lineWidth: 3,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
