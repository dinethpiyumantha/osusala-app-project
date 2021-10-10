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
                suffixText: '*',
                suffixStyle: TextStyle(
                    color: Colors.red,
                  ),
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
                suffixText: '*',
                suffixStyle: TextStyle(
                    color: Colors.red,
                  ),
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
                suffixIcon:  const Icon(
                    Icons.calendar_today
                   
                  ),
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
                suffixText: '*',
                 suffixStyle: TextStyle(
                    color: Colors.red,
                  ),
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
                    onPressed: () =>showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Verification'),
          content: const Text('Are you sure to save profile details?'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Cancel'),
            ),
            TextButton(
              style: TextButton.styleFrom(
              primary: Colors.purple,
            ),
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('Save'),
            ),
          ],
        ),
      ),
      child: const Text('SAVE DETAILS'),
                 
                    style: ElevatedButton.styleFrom(
                      primary:oSuccessColor,
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
                    onPressed: () =>showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Alert!'),
          content: const Text('Are you sure to delete this profile?'),
          actions: <Widget>[
            TextButton(
              
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Cancel'),
            ),
           TextButton(
              style: TextButton.styleFrom(
              primary: Colors.red,
            ),
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('Delete'),
            ),
          ],
        ),
      ),
      child: const Text('DELETE PROFILE'),
                 
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


 void _onShowButtonPressed() {


   }
}
