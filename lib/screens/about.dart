import 'package:flutter/material.dart';
import 'package:osusala/constraints.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(50),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'ABOUT',
                style: TextStyle(
                    fontFamily: defaltFontFamily,
                    color: oPrimaryColor,
                    fontSize: 18),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 250,
                child: Text(
                  sampleShortTextLorem,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: oSecondaryColor),
                ),
              ),
              SizedBox(height: 20),
              Image.asset(
                'assets/images/devalgo.png',
                width: 150,
              ),
              SizedBox(height: 80),
              SizedBox(
                height: 40,
                width: 150,
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed('/home');
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(oPrimaryColor),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        side: BorderSide(color: oPrimaryColor, width: 2),
                      ),
                    ),
                  ),
                  child: Text(
                    "HOME",
                    style: TextStyle(
                      color: oLightColor,
                      fontFamily: defaltFontFamily,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
