import 'package:flutter/material.dart';
import 'package:osusala/constraints.dart';

// Single Card Widget
class CardButton extends StatelessWidget {
  CardButton(this.iconPath, this.cardName);

  final String iconPath;
  final String cardName;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 70,
            width: 80,
            child: Image.asset(
              'assets/icons/' + iconPath,
            ),
          ),
          Text(
            cardName,
            style: TextStyle(
                color: oPrimaryColor,
                fontSize: 16,
                fontFamily: 'BioSans',
                fontStyle: FontStyle.normal),
          ),
        ],
      ),
      width: 130,
      height: 120,
      decoration: BoxDecoration(
        color: oWhiteColor,
        borderRadius: BorderRadius.circular(35),
        boxShadow: [
          BoxShadow(
            offset: Offset(2, 2),
            blurRadius: 10,
            color: oPrimaryColor.withOpacity(0.23),
          )
        ],
      ),
    );
  }
}

// Card Menu Widget by using multiple Single Card Widgets
class CardMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 50),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 0,
      ),
      children: <Widget>[
        Center(child: CardButton('capsules.png', 'Products')),
        Center(child: CardButton('cartplus.png', 'Orders')),
        Center(child: CardButton('chat.png', 'Chat')),
        Center(child: CardButton('tag.png', 'Offers')),
        Center(child: CardButton('location.png', 'Locations')),
        Center(child: CardButton('userscog.png', 'Profile')),
      ],
    );
  }
}
