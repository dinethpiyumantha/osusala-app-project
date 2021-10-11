import 'package:flutter/material.dart';
import 'package:osusala/constraints.dart';

class Signout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: oLightColor,
      body: Container(
        padding: EdgeInsets.all(50),
        color: oLightColor,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: Column(
            children: <Widget>[
              Image.asset(
                'assets/images/greenlogo.png',
                height: 120,
              ),
              Text(
                'rdcH Tiqi,',
                style: TextStyle(
                  fontFamily: 'Sinhala',
                  fontSize: 16,
                  color: oPrimaryColor,
                ),
              ),
              Text(
                'mur xrry',
                style: TextStyle(
                  fontFamily: 'Tamil',
                  fontSize: 16,
                  color: oPrimaryColor,
                ),
              ),
              Text(
                'RAJYA OSUSALA',
                style: TextStyle(
                  fontFamily: defaltFontFamily,
                  color: oPrimaryColor,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 100),
              ),
              Text(
                'Username',
                textAlign: TextAlign.left,
                overflow: TextOverflow.ellipsis,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  labelText: 'Please enter the username',
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 40),
              ),
              Text(
                'Password',
                textAlign: TextAlign.left,
                overflow: TextOverflow.ellipsis,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  labelText: 'Please enter the password',
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 40),
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
                    "LOGIN",
                    style: TextStyle(
                      color: oLightColor,
                      fontFamily: defaltFontFamily,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
