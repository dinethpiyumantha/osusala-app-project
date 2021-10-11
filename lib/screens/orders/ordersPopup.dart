import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:osusala/constraints.dart';

class OrdersPopup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
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
        flexibleSpace: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Upload Orders',
                style: TextStyle(
                  color: oPrimaryColor,
                  fontFamily: defaltFontFamily,
                  fontSize: 30,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.only(bottom: 20),
        child: FloatingActionButton(
          backgroundColor: oPrimaryColor,
          foregroundColor: oLightColor,
          onPressed: () {
            showBottomSheet(
                context: context,
                builder: (context) => Container(
                      color: Colors.red,
                      child: Container(
                        height: 200,
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {}, icon: Icon(Icons.camera)),
                            IconButton(
                                onPressed: () {}, icon: Icon(Icons.image)),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.document_scanner)),
                          ],
                        ),
                      ),
                    ));
          },
          elevation: 0,
          child: const Icon(
            Icons.add,
            size: 35,
          ),
        ),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 20),
              ),
              Text(
                '2021 October, 8',
                textAlign: TextAlign.left,
                overflow: TextOverflow.ellipsis,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
              ),
              Container(
                width: 350.0,
                height: 200.0,
                decoration: new BoxDecoration(
                  color: Colors.lightGreen[100],
                  shape: BoxShape.rectangle,
                ),
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: Padding(
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            'assets/images/prescription.png',
                            width: 140,
                          ),
                          Text('prescription1.png'),
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          Padding(padding: EdgeInsets.only(top: 80, right: 20)),
                          Text('Recieved'),
                          Icon(Icons.delete),
                        ],
                      ),
                    ],
                  ),
                  padding: EdgeInsets.only(top: 20, right: 10, left: 10),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
              ),
              Container(
                width: 300.0,
                height: 120.0,
                decoration: new BoxDecoration(
                  color: Colors.white,
                  border: Border.all(),
                  shape: BoxShape.rectangle,
                ),
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: Padding(
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text('Are you sure to clear the order?'),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              // ignore: deprecated_member_use
                              FlatButton(
                                child: Text('Cancel'),
                                color: Colors.black12,
                                onPressed: () {
                                  Navigator.pushNamed(context, '/orders');
                                },
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              // ignore: deprecated_member_use
                              FlatButton(
                                child: Text('Delete'),
                                color: Colors.red,
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, '/deletedOrders');
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  padding: EdgeInsets.only(top: 20, right: 10, left: 10),
                ),
              ),
              Text(
                '2021 October, 5',
                textAlign: TextAlign.left,
                overflow: TextOverflow.ellipsis,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
              ),
              Container(
                width: 350.0,
                height: 200.0,
                decoration: new BoxDecoration(
                  color: Colors.lightGreen[100],
                  shape: BoxShape.rectangle,
                ),
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: Padding(
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            'assets/images/prescription.png',
                            width: 140,
                          ),
                          Text('prescription2.png'),
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          Padding(padding: EdgeInsets.only(top: 80, right: 20)),
                          Text('Recieved'),
                          IconButton(
                            icon: Icon(
                              Icons.delete,
                              color: oPrimaryColor,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                  padding: EdgeInsets.only(top: 20, right: 10, left: 10),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
