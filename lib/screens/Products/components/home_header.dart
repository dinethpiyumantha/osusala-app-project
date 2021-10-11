import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constraints.dart';
import '../../../size_config.dart';
//import 'icon_btn_with_counter.dart';
import 'search_field.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(7)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //Back button
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                  print("hello hellooooo");
                },
                icon: Icon(
                  Icons.arrow_back_rounded,
                  color: oPrimaryColor,
                ),
              ),
              //Head topic
              Text(
                "Product Categories",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: defaltFontFamily,
                  fontSize: 19,
                  color: oSecondaryColor,
                ),
              ),
              //Cart page button
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/cart');
                },
                icon: Icon(
                  CupertinoIcons.cart,
                  size: 27.0,
                  color: oPrimaryColor,
                ),
              ),
            ],
          ),
          Row(
              children: [
                SearchField(),
              ],
          ),
        ],
      ),
    );
  }
}
