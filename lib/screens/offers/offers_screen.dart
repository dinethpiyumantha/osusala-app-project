import 'package:flutter/material.dart';
import 'package:osusala/constraints.dart';
import 'package:osusala/screens/offers/models/data.dart';


class OffersScreen extends StatelessWidget {
  const OffersScreen({Key? key}) : super(key: key);

   @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          elevation: 0,
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
      backgroundColor: Color(0xFFFCFAF8),
      body: ListView(
        children: <Widget>[
      Center(
  child: Image.asset('assets/icons/tag.png',width:30,
  height: 30 ),),
                 
          Text(
              'OFFERS',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: oPrimaryColor,
                  fontSize: 18,
                  fontFamily: 'BioSans',
                  fontStyle: FontStyle.normal),
            ),
  SizedBox(height: 25),
/*Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '  Search Offers',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: oPrimaryColor,
                  fontFamily: defaltFontFamily,
                  fontSize: 12,
                ),
              ), 
            ),*/
            
            TextField(
              cursorColor: oSuccessColor,
              cursorWidth: 2.5,
              cursorRadius: Radius.circular(2),
              textAlign: TextAlign.left,
              style: TextStyle(
                height: 1.2,
                fontFamily: defaltFontFamily,
                fontSize: 18,
              ),
              decoration: InputDecoration(
                hintText: '   Search for Offers..',
                filled: true,
                fillColor: Colors.white,
                contentPadding: EdgeInsets.zero,
                suffixIcon: Icon(
                  Icons.search,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    color: oSuccessColor,
                  ),
                ),
              ),
            ),
          




SizedBox(height: 25),
Container(
  
  child:
  IconButton(
  icon: Image.asset('assets/images/filter.png',width:25,height: 25),
  iconSize: 50,
  onPressed: ()   =>showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
  title: Container(child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text('FILTER OFFERS',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,),),
  ),color: oSuccessColor,),
  content: setupAlertDialoadContainer(context),
)
      ), 
),
  
  // Image.asset('assets/images/filter.png',width:25,height: 25 ),
  alignment: Alignment(0.9, 0.2)),
          SizedBox(height: 15.0),
          
          Container(
            
              padding: EdgeInsets.only(right: 15.0),
              width: MediaQuery.of(context).size.width - 30.0,
              height:  500.0,
              child: GridView.count(
                crossAxisCount: 2,
                primary: false,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 15.0,
                childAspectRatio: 0.8,
                children: <Widget>[
                  _buildCard('MOTHERS\' DAY SPECIAL OFFER', '\$3.99', 'assets/images/o1.png',
                      false, false, context),
                  _buildCard('BUY 2 GET 1 FREE ', '\$5.99', 'assets/images/o2.png',
                      false, false, context),
                  _buildCard('LOYALTY CUSTOMER OFFER', '\$1.99',
                      'assets/images/o4.png', false, true, context),
                  _buildCard('50% OFF SPECIAL DISCOUNT', '\$2.99', 'assets/images/o3.png',
                      false, false, context),
                      
                ],
              
              )),
          SizedBox(height: 15.0),


            TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.teal[100],
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(50)),
                labelText: 'Promo Code',
                hintText: 'Enter Promo Code ',
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width - 2 * 130,
                height: 30,
                child: ElevatedButton(
                  onPressed: _onShowButtonPressed,
                  child: Text('OK'),
                  style: ElevatedButton.styleFrom(
                    primary: oPrimaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12), // <-- Radius
                    ),
                  ),
                ),
              ),
            ),
SizedBox(height: 45.0),
        ],
      ),
    );
    
  }

  Widget _buildCard(String name, String price, String imgPath, bool added,
      bool isFavorite, context) {
    return Padding(
        padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
        child: InkWell(
            onTap: () {
              
            },
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 3.0,
                          blurRadius: 5.0)
                    ],
                    color: Colors.white),
                child: Column(children: [
                  Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            isFavorite
                                ? Icon(Icons.favorite, color: Color(0xff00ce30))
                                : Icon(Icons.favorite_border,
                                    color: Color(0xff00ce30))
                          ])),
                  Hero(
                      tag: imgPath,
                      child: Container(
                          height: 105.0,
                          width: 185.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(imgPath),
                                  fit: BoxFit.contain)))),
                  SizedBox(height: 7.0),
                  Text(price,
                      style: TextStyle(
                          color: Color(0xff00ce30),
                          fontFamily: 'Varela',
                          fontSize: 12.0)),
                  Text(name,
                      style: TextStyle(
                          color: Color(0xFF575E67),
                          fontFamily: 'Varela',
                          fontSize: 12.0)),
                  Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Container(color: Color(0xFFEBEBEB), height: 1.0)),
                  Padding(
                      padding: EdgeInsets.only(left: 5.0, right: 5.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            if (!added) ...[
                              Icon(Icons.shopping_basket,
                                  color: Color(0xff3b3e51), size: 12.0),
                              Text('Get this offer',
                                  style: TextStyle(
                                      fontFamily: 'Varela',
                                      color: Color(0xff3b3e51),
                                      fontSize: 12.0))
                            ],
                            if (added) ...[
                              Icon(Icons.remove_circle_outline,
                                  color: Color(0xff3b3e51), size: 12.0),
                              Text('3',
                                  style: TextStyle(
                                      fontFamily: 'Varela',
                                      color: Color(0xff3b3e51),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12.0)),
                              Icon(Icons.add_circle_outline,
                                  color: Color(0xff3b3e51), size: 12.0),
                            ]
                          ]))
                ]))));
  }
Widget setupAlertDialoadContainer(context) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Container(
        color: Colors.teal[100],
        height: 175.0, // Change as per your requirement
        width: 300.0, // Change as per your requirement
        child: ListView.builder(

          shrinkWrap: true,
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Card(child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(filterMenuList[index],textAlign: TextAlign.center),
              )),
            );
          },
        ),
      ),
      Align(
        alignment: Alignment.bottomRight,
        child: FlatButton(

          onPressed: (){
          Navigator.pop(context);
        },child: Text("Cancel"),),
      )
    ],
  );
}
  
  void _onShowButtonPressed() {}
}