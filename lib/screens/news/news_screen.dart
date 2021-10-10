import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:osusala/constraints.dart';
import 'package:osusala/screens/news/components/news.dart';

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
      body: Swiper(
        itemCount: 4,
        itemWidth: MediaQuery.of(context).size.width,
        layout: SwiperLayout.DEFAULT,
        itemBuilder: (context, index) {
          return Center(
            child: Stack(
              children: <Widget>[
                News(index),
              ],
            ),
          );
        },
        pagination: SwiperPagination(
          margin: EdgeInsets.only(
            bottom: 20,
          ),
          alignment: Alignment.bottomCenter,
          builder: new DotSwiperPaginationBuilder(
              color: Colors.grey, activeColor: oPrimaryColor),
        ),
      ),
    );
  }
}
