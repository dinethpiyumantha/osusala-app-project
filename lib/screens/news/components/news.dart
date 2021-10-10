import 'package:flutter/material.dart';
import 'package:osusala/constraints.dart';

class News extends StatelessWidget {
  News(this.index);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            newsObjects[this.index].getTitle(),
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
            child: Image.network(newsObjects[this.index].getImagePath()),
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
              newsObjects[this.index].getDescription(),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
