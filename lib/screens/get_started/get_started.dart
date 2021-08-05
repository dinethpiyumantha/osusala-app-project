import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:osusala/constraints.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: oLightColor,
        shadowColor: Colors.transparent,
        flexibleSpace: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 60,
                child: Image.asset('assets/images/greenlogo.png'),
              ),
              Text(
                'RAJYA OSUSALA',
                style: TextStyle(
                  color: oPrimaryColor,
                  fontFamily: defaltFontFamily,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(0),
            child: Container(
              color: Colors.transparent,
              margin: EdgeInsets.all(0),
              height: 350,
              child: Swiper(
                itemCount: 3,
                itemWidth: MediaQuery.of(context).size.width,
                layout: SwiperLayout.TINDER,
                itemBuilder: (context, index) {
                  return Center(
                    child: Stack(
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Card(
                              margin: EdgeInsets.all(0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              color: oPrimaryColor,
                              child: Center(
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.all(0),
                                      height: 300,
                                      child: Text(
                                        "Hello",
                                        style: TextStyle(
                                          fontFamily: defaltFontFamily,
                                          fontSize: 16,
                                          color: oPrimaryColor,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          Text(
            'Covid19 Tips',
            style: TextStyle(
              fontFamily: defaltFontFamily,
              fontSize: 18,
              color: oPrimaryColor,
            ),
          ),
          Padding(
            child: Text(
              sampleTextLorem,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: defaltFontFamily,
                  fontSize: 12,
                  color: oSecondaryColor),
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 0,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          SizedBox(
            height: 40,
            width: MediaQuery.of(context).size.width - 2 * 20,
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
                "LET'S GET STARTED",
                style: TextStyle(
                  color: oLightColor,
                  fontFamily: defaltFontFamily,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 40,
            width: MediaQuery.of(context).size.width - 2 * 20,
            child: TextButton(
              onPressed: () {},
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        side: BorderSide(color: oSecondaryColor, width: 1.5))),
              ),
              child: Text(
                "CONNECT WITH GOOGLE",
                style: TextStyle(
                  color: oPrimaryColor,
                  fontFamily: defaltFontFamily,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
