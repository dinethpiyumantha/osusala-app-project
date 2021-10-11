import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SearchField extends StatelessWidget {
  // const SearchField({
  //   Key? key,
  // }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              // width: SizeConfig.screenWidth * 0.6,
              width: 320.0,
              //color: Colors.pink,
              decoration: BoxDecoration(
                color: kSecondaryColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(15),
              ),
              child: TextField(
                onChanged: (value) => print(value),
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(30),
                        vertical: 10.0),
                        // horizontal: 200.0,
                        // vertical: 10.0),
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    hintText: "Search product",
                    prefixIcon: Icon(Icons.search)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
