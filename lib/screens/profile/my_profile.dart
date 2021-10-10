import 'package:flutter/material.dart';
import 'package:osusala/constraints.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);

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
        body: Center(
          child: Column(children: [
            Center(
  child: Image.asset('assets/icons/man.png',width:55,
  height: 55 ),),
  
           
           
           Text(
                    'MY PROFILE',
                    style: TextStyle(
                        color: oPrimaryColor,
                        fontSize: 18,
                        fontFamily: 'BioSans',
                        fontStyle: FontStyle.normal),
                  ),


            SizedBox(
              height:12
            ),

            TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(50)),
                labelText: 'Name',
                hintText: 'Your Name',
              ),
              
            ),
            
            SizedBox(
              height:12
            ),
           TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(50)),
                labelText: 'NIC',
                 hintText: 'Your NIC',
              ),
            ),
            
            SizedBox(
              height:12
            ),
            
      
                
    TextFormField(
              decoration: InputDecoration(
                
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(50)
                    ),
                labelText: 'Birthday',
                 hintText: 'Your Birthday',
              ),
              
            ),
           SizedBox(
              height:12
            ),
           
            TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(50)),
                labelText: 'Mobile',
                 hintText: 'Your Mobile No',
              ),
            ),
            
            SizedBox(
              height:12
            ),
            
            TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(50)),
                labelText: 'Address',
                 hintText: 'Your Address',
              ),
            ),
            
            SizedBox(
              height:12
            ),
            
            TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(50)),
                labelText: 'Email',
                 hintText: 'Your Email',
              ),
            ),
 

          Padding(
                padding: 
                    EdgeInsets.all(10.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width - 2 * 20,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: _onShowButtonPressed,
                    child: Text('SHOW DETAILS'),
                    style: ElevatedButton.styleFrom(
                      primary: oSuccessColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12), // <-- Radius
                      ),
                    ),
                  ),
                ),
              ),

               Padding(
                padding: 
                    EdgeInsets.all(10.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width - 2 * 20,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: _onShowButtonPressed,
                    child: Text('DELETE PROFILE'),
                    style: ElevatedButton.styleFrom(
                      primary:oPrimaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12), // <-- Radius
                      ),
                    ),
                  ),
                ),
              ),
          ]),
        ));
  }


   void _onShowButtonPressed(){}
}
