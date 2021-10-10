import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:osusala/constraints.dart';

class NewsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: oLightColor,
        shadowColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_rounded,
            color: oPrimaryColor,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/home');
          },
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'Lorem ipsum dolor sit amet.',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 0,
              ),
              child: Image.asset('assets/images/testslide.png'),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 50,
              ),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam sit amet quam nec velit auctor tristique eu sed urna. Pellentesque non neque vel ipsum laoreet.',
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
