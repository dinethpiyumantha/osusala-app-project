import 'dart:html';

import 'package:flutter/material.dart';
import 'package:osusala/constraints.dart';

class DeletedOrders extends StatelessWidget {
  const DeletedOrders({Key? key}) : super(key: key);

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
            ],
          ),
        ),
      ),
    );
  }
}
