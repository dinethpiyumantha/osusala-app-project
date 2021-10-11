import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:osusala/flutter_flow/flutter_flow_icon_button.dart';
import 'package:osusala/flutter_flow/flutter_flow_theme.dart';
import 'package:osusala/screens/home/home_screen.dart';

import '../../constraints.dart';
import 'components/cart.dart';
import 'components/categories.dart';
//import 'package:osusala/flutter_flow/flutter_flow_util.dart';
//import 'package:osusala/screens/Products/components/body.dart';
//import 'package:osusala/screens/Products/components/cart.dart';

// class CategoriesMenu extends StatelessWidget {
//   static String routeName = "/home_categories";

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Body(),
//     );
//   }
// }

class CategoriesMenu extends StatefulWidget {
  const CategoriesMenu({ Key? key }) : super(key: key);
  static String routeName = "/home_categories";

  @override
  _CategoriesMenuState createState() => _CategoriesMenuState();
}

class _CategoriesMenuState extends State<CategoriesMenu> {

    final scaffoldKey = GlobalKey<ScaffoldState>();

  int currentIndex = 1;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  final screens = [
    HomeScreen(),
    ProductCategoriesWidget(),
    Cart(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      // backgroundColor: Color(0xFF1E2429),
      backgroundColor: oWhiteColor,
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.backpack),
            label: 'Products',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'My Cart',
          ),
        ],
        currentIndex: currentIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
      body: screens[currentIndex],
      
    );
  }
}

// class ProductCategoriesWidget extends StatefulWidget {
//   //ProductCategoriesWidget({Key key}) : super(key: key);

//   @override
//   _ProductCategoriesWidgetState createState() =>
//       _ProductCategoriesWidgetState();
// }

// class _ProductCategoriesWidgetState extends State<ProductCategoriesWidget> {
//   late TextEditingController textController;
//   final scaffoldKey = GlobalKey<ScaffoldState>();

//   int _selectedIndex = 1;
//   static const TextStyle optionStyle =
//       TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
//   static const List<Widget> _widgetOptions = <Widget>[
//     Text(
//       'Index 0: Home',
//       style: optionStyle,
//     ),
//     Text(
//       'Index 1: Products',
//       style: optionStyle,
//     ),
//     Text(
//       'Index 1: My Cart',
//       style: optionStyle,
//     ),
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   void initState() {
//     super.initState();
//     textController = TextEditingController();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: scaffoldKey,
//       // backgroundColor: Color(0xFF1E2429),
//       backgroundColor: oWhiteColor,
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.favorite_outline),
//             label: 'Products',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.favorite_outline),
//             label: 'My Cart',
//           ),
//         ],
//         currentIndex: _selectedIndex,
//         selectedItemColor: Colors.amber[800],
//         onTap: _onItemTapped,
//       ),
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Column(
//             mainAxisSize: MainAxisSize.max,
//             children: [
//               Container(
//                 width: MediaQuery.of(context).size.width,
//                 decoration: BoxDecoration(
//                   color: Color(0x76000000),
//                   image: DecorationImage(
//                     fit: BoxFit.fitWidth,
//                     image: Image.asset(
//                       'assets/images/actionvance-eXVd7gDPO9A-unsplash.jpg',
//                     ).image,
//                   ),
//                   boxShadow: [
//                     BoxShadow(
//                       blurRadius: 4,
//                       color: Colors.transparent,
//                       offset: Offset(0, 2),
//                     )
//                   ],
//                   borderRadius: BorderRadius.only(
//                     bottomLeft: Radius.circular(16),
//                     bottomRight: Radius.circular(16),
//                     topLeft: Radius.circular(0),
//                     topRight: Radius.circular(0),
//                   ),
//                 ),
//                 child: Container(
//                   width: 100,
//                   decoration: BoxDecoration(
//                     image: DecorationImage(
//                       fit: BoxFit.cover,
//                       image: Image.asset(
//                         'assets/images/ayurvedaa.png',
//                       ).image,
//                     ),
//                     gradient: LinearGradient(
//                       colors: [Color(0xFF1E2429), Color(0x00111417)],
//                       stops: [0, 1],
//                       begin: AlignmentDirectional(0, -1),
//                       end: AlignmentDirectional(0, 1),
//                     ),
//                     borderRadius: BorderRadius.only(
//                       bottomLeft: Radius.circular(16),
//                       bottomRight: Radius.circular(16),
//                       topLeft: Radius.circular(0),
//                       topRight: Radius.circular(0),
//                     ),
//                   ),
//                   child: Padding(
//                     padding: EdgeInsetsDirectional.fromSTEB(16, 56, 16, 0),
//                     child: Column(
//                       mainAxisSize: MainAxisSize.max,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Padding(
//                           padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
//                           child: Text(
//                             'Products',
//                             style: FlutterFlowTheme.title1.override(
//                               fontFamily: 'Lexend Deca',
//                               color: Colors.white,
//                               fontSize: 24,
//                               fontWeight: FontWeight.bold, fontStyle: FontStyle.normal,
//                             ),
//                           ),
//                         ),
//                         Padding(
//                           padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 12),
//                           child: Container(
//                             width: MediaQuery.of(context).size.width * 0.96,
//                             height: 50,
//                             decoration: BoxDecoration(
//                               color: Color(0x9AFFFFFF),
//                               borderRadius: BorderRadius.only(
//                                 bottomLeft: Radius.circular(8),
//                                 bottomRight: Radius.circular(8),
//                                 topLeft: Radius.circular(10),
//                                 topRight: Radius.circular(8),
//                               ),
//                             ),
//                             child: Row(
//                               mainAxisSize: MainAxisSize.max,
//                               children: [
//                                 Expanded(
//                                   child: Padding(
//                                     padding: EdgeInsetsDirectional.fromSTEB(
//                                         16, 0, 0, 0),
//                                     child: TextFormField(
//                                       controller: textController,
//                                       obscureText: false,
//                                       decoration: InputDecoration(
//                                         hintText: 'Search for products...',
//                                         hintStyle:
//                                             FlutterFlowTheme.bodyText2.override(
//                                           fontFamily: 'Lexend Deca',
//                                           color: Color(0xFF1A1F24),
//                                           fontSize: 14,
//                                           fontWeight: FontWeight.normal,fontStyle: FontStyle.normal,
//                                         ),
//                                         enabledBorder: UnderlineInputBorder(
//                                           borderSide: BorderSide(
//                                             color: Color(0x00000000),
//                                             width: 1,
//                                           ),
//                                           borderRadius: const BorderRadius.only(
//                                             topLeft: Radius.circular(4.0),
//                                             topRight: Radius.circular(4.0),
//                                           ),
//                                         ),
//                                         focusedBorder: UnderlineInputBorder(
//                                           borderSide: BorderSide(
//                                             color: Color(0x00000000),
//                                             width: 1,
//                                           ),
//                                           borderRadius: const BorderRadius.only(
//                                             topLeft: Radius.circular(4.0),
//                                             topRight: Radius.circular(4.0),
//                                           ),
//                                         ),
//                                       ),
//                                       style:
//                                           FlutterFlowTheme.bodyText2.override(
//                                         fontFamily: 'Lexend Deca',
//                                         color: Color(0xFF1A1F24),
//                                         fontSize: 14,
//                                         fontWeight: FontWeight.normal,fontStyle: FontStyle.normal,
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                                 Card(
//                                   clipBehavior: Clip.antiAliasWithSaveLayer,
//                                   color: Color(0xFFAAA6A6),
//                                   shape: RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(8),
//                                   ),
//                                   child: FlutterFlowIconButton(
//                                     borderColor: Color(0xFFA1A0A0),
//                                     borderRadius: 30,
//                                     borderWidth: 0.0,
//                                     buttonSize: 46,
//                                     fillColor: Color(0xFF9B9B9B),
//                                     icon: Icon(
//                                       Icons.search_outlined,
//                                       color: Color(0xFF696868),
//                                       size: 24,
//                                     ),
//                                     onPressed: () {
//                                       print('IconButton pressed ...');
//                                     },
//                                   ),
//                                 )
//                               ],
//                             ),
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 0),
//                 child: Row(
//                   mainAxisSize: MainAxisSize.max,
//                   children: [
//                     Text(
//                       'Popular Categories',
//                       style: FlutterFlowTheme.subtitle2.override(
//                         fontFamily: 'Lexend Deca',
//                         color: Colors.white,
//                         fontSize: 16,
//                         fontWeight: FontWeight.w500,fontStyle: FontStyle.normal,
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
//                 child: SingleChildScrollView(
//                   scrollDirection: Axis.horizontal,
//                   child: Row(
//                     mainAxisSize: MainAxisSize.max,
//                     children: [
//                       Padding(
//                         padding: EdgeInsetsDirectional.fromSTEB(16, 8, 0, 8),
//                         child: InkWell(
//                           onTap: () async {
//                             // await Navigator.push(
//                             //   context,
//                             //   PageTransition(
//                             //     type: PageTransitionType.rightToLeft,
//                             //     duration: Duration(milliseconds: 300),
//                             //     reverseDuration: Duration(milliseconds: 300),
//                             //     child: Cart(),
//                             //   ),
//                             // );
//                             Navigator.pushNamed(context, '/home');
//                           },
//                           child: Container(
//                             width: 250,
//                             height: 170,
//                             decoration: BoxDecoration(
//                               color: Color(0xBF000000),
//                               image: DecorationImage(
//                                 fit: BoxFit.fitWidth,
//                                 image: Image.asset(
//                                   'assets/images/hodm6_s.jpg',
//                                 ).image,
//                               ),
//                               boxShadow: [
//                                 BoxShadow(
//                                   blurRadius: 6,
//                                   color: Color(0x64000000),
//                                   offset: Offset(0, 2),
//                                 )
//                               ],
//                               borderRadius: BorderRadius.circular(8),
//                             ),
//                             child: SingleChildScrollView(
//                               child: Column(
//                                 mainAxisSize: MainAxisSize.max,
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   Padding(
//                                     padding: EdgeInsetsDirectional.fromSTEB(
//                                         8, 4, 8, 0),
//                                     child: Row(
//                                       mainAxisSize: MainAxisSize.max,
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.spaceBetween,
//                                       children: [
//                                         Card(
//                                           clipBehavior:
//                                               Clip.antiAliasWithSaveLayer,
//                                           color: Color(0x9839D2C0),
//                                           elevation: 0,
//                                           shape: RoundedRectangleBorder(
//                                             borderRadius:
//                                                 BorderRadius.circular(8),
//                                           ),
//                                           child: Padding(
//                                             padding:
//                                                 EdgeInsetsDirectional.fromSTEB(
//                                                     6, 2, 6, 2),
//                                             child: Text(
//                                               'Best Ayurwedic Products',
//                                               style: FlutterFlowTheme.bodyText2
//                                                   .override(
//                                                 fontFamily: 'Lexend Deca',
//                                                 color: Colors.white,
//                                                 fontSize: 14,
//                                                 fontWeight: FontWeight.normal,fontStyle: FontStyle.normal,
//                                               ),
//                                             ),
//                                           ),
//                                         )
//                                       ],
//                                     ),
//                                   ),
//                                   Container(
//                                     width: 250,
//                                     height: 60,
//                                     decoration: BoxDecoration(
//                                       color: Color(0xA5696868),
//                                       borderRadius: BorderRadius.only(
//                                         bottomLeft: Radius.circular(8),
//                                         bottomRight: Radius.circular(8),
//                                         topLeft: Radius.circular(0),
//                                         topRight: Radius.circular(0),
//                                       ),
//                                     ),
//                                     child: Row(
//                                       mainAxisSize: MainAxisSize.max,
//                                       children: [
//                                         Container(
//                                           width: 60,
//                                           height: 100,
//                                           decoration: BoxDecoration(
//                                             color: Color(0xFF696868),
//                                             borderRadius: BorderRadius.only(
//                                               bottomLeft: Radius.circular(8),
//                                               bottomRight: Radius.circular(0),
//                                               topLeft: Radius.circular(0),
//                                               topRight: Radius.circular(0),
//                                             ),
//                                           ),
//                                           child: Column(
//                                             mainAxisSize: MainAxisSize.max,
//                                             mainAxisAlignment:
//                                                 MainAxisAlignment.center,
//                                             children: [
//                                               Padding(
//                                                 padding: EdgeInsetsDirectional
//                                                     .fromSTEB(4, 4, 4, 4),
//                                                 child: Text(
//                                                   '60+',
//                                                   textAlign: TextAlign.center,
//                                                   style: FlutterFlowTheme.title3
//                                                       .override(
//                                                     fontFamily: 'Lexend Deca',
//                                                     color: Colors.white,
//                                                     fontSize: 20,
//                                                     fontWeight: FontWeight.bold,fontStyle: FontStyle.normal,
//                                                   ),
//                                                 ),
//                                               )
//                                             ],
//                                           ),
//                                         ),
//                                         Padding(
//                                           padding:
//                                               EdgeInsetsDirectional.fromSTEB(
//                                                   8, 0, 0, 0),
//                                           child: Column(
//                                             mainAxisSize: MainAxisSize.max,
//                                             mainAxisAlignment:
//                                                 MainAxisAlignment.center,
//                                             crossAxisAlignment:
//                                                 CrossAxisAlignment.start,
//                                             children: [
//                                               Text(
//                                                 'Ayurvedic Products',
//                                                 style: FlutterFlowTheme
//                                                     .bodyText1
//                                                     .override(
//                                                   fontFamily: 'Lexend Deca',
//                                                   color: Colors.white,
//                                                   fontSize: 16,
//                                                   fontWeight: FontWeight.normal,fontStyle: FontStyle.normal,
//                                                 ),
//                                               )
//                                             ],
//                                           ),
//                                         )
//                                       ],
//                                     ),
//                                   )
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsetsDirectional.fromSTEB(16, 8, 0, 8),
//                         child: InkWell(
//                           onTap: () async {
//                               Navigator.pushNamed(context, '/home');
//                           },
//                           child: Container(
//                             width: 250,
//                             height: 170,
//                             decoration: BoxDecoration(
//                               image: DecorationImage(
//                                 fit: BoxFit.fill,
//                                 image: Image.asset(
//                                   'assets/images/offer1.png',
//                                 ).image,
//                               ),
//                               boxShadow: [
//                                 BoxShadow(
//                                   blurRadius: 3,
//                                   color: Color(0x64000000),
//                                   offset: Offset(0, 2),
//                                 )
//                               ],
//                               borderRadius: BorderRadius.circular(8),
//                             ),
//                             child: Column(
//                               mainAxisSize: MainAxisSize.max,
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Padding(
//                                   padding: EdgeInsetsDirectional.fromSTEB(
//                                       8, 4, 8, 0),
//                                   child: Row(
//                                     mainAxisSize: MainAxisSize.max,
//                                     mainAxisAlignment:
//                                         MainAxisAlignment.spaceBetween,
//                                     children: [
//                                       Card(
//                                         clipBehavior:
//                                             Clip.antiAliasWithSaveLayer,
//                                         color: Color(0x9839D2C0),
//                                         elevation: 0,
//                                         shape: RoundedRectangleBorder(
//                                           borderRadius:
//                                               BorderRadius.circular(8),
//                                         ),
//                                         child: Padding(
//                                           padding:
//                                               EdgeInsetsDirectional.fromSTEB(
//                                                   6, 2, 6, 2),
//                                           child: Text(
//                                             'High quality equipments',
//                                             style: FlutterFlowTheme.bodyText2
//                                                 .override(
//                                               fontFamily: 'Lexend Deca',
//                                               color: Colors.white,
//                                               fontSize: 14,
//                                               fontWeight: FontWeight.normal,fontStyle: FontStyle.normal,
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                       // Card(
//                                       //   clipBehavior:
//                                       //       Clip.antiAliasWithSaveLayer,
//                                       //   color: Color(0xFF1E2429),
//                                       //   elevation: 2,
//                                       //   shape: RoundedRectangleBorder(
//                                       //     borderRadius:
//                                       //         BorderRadius.circular(30),
//                                       //   ),
//                                       //   child: Padding(
//                                       //     padding:
//                                       //         EdgeInsetsDirectional.fromSTEB(
//                                       //             8, 8, 8, 8),
//                                       //     child: Icon(
//                                       //       Icons.favorite_border,
//                                       //       color: Colors.white,
//                                       //       size: 24,
//                                       //     ),
//                                       //   ),
//                                       // )
//                                     ],
//                                   ),
//                                 ),
//                                 Container(
//                                   width: 250,
//                                   height: 60,
//                                   decoration: BoxDecoration(
//                                     color: Color(0xFF090F13),
//                                     borderRadius: BorderRadius.only(
//                                       bottomLeft: Radius.circular(8),
//                                       bottomRight: Radius.circular(8),
//                                       topLeft: Radius.circular(0),
//                                       topRight: Radius.circular(0),
//                                     ),
//                                   ),
//                                   child: Row(
//                                     mainAxisSize: MainAxisSize.max,
//                                     children: [
//                                       Container(
//                                         width: 60,
//                                         height: 100,
//                                         decoration: BoxDecoration(
//                                           color: Color(0xFF696868),
//                                           borderRadius: BorderRadius.only(
//                                             bottomLeft: Radius.circular(8),
//                                             bottomRight: Radius.circular(0),
//                                             topLeft: Radius.circular(0),
//                                             topRight: Radius.circular(0),
//                                           ),
//                                         ),
//                                         child: Column(
//                                           mainAxisSize: MainAxisSize.max,
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.center,
//                                           children: [
//                                             Padding(
//                                               padding: EdgeInsetsDirectional
//                                                   .fromSTEB(4, 4, 4, 4),
//                                               child: Text(
//                                                 '50+',
//                                                 textAlign: TextAlign.center,
//                                                 style: FlutterFlowTheme.title3
//                                                     .override(
//                                                   fontFamily: 'Lexend Deca',
//                                                   color: Colors.white,
//                                                   fontSize: 20,
//                                                   fontWeight: FontWeight.bold,fontStyle: FontStyle.normal,
//                                                 ),
//                                               ),
//                                             )
//                                           ],
//                                         ),
//                                       ),
//                                       Padding(
//                                         padding: EdgeInsetsDirectional.fromSTEB(
//                                             8, 0, 0, 0),
//                                         child: Column(
//                                           mainAxisSize: MainAxisSize.max,
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.center,
//                                           crossAxisAlignment:
//                                               CrossAxisAlignment.start,
//                                           children: [
//                                             Text(
//                                               'Medical Equipments',
//                                               style: FlutterFlowTheme.bodyText1
//                                                   .override(
//                                                 fontFamily: 'Lexend Deca',
//                                                 color: Colors.white,
//                                                 fontSize: 16,
//                                                 fontWeight: FontWeight.normal,fontStyle: FontStyle.normal,
//                                               ),
//                                             )
//                                           ],
//                                         ),
//                                       )
//                                     ],
//                                   ),
//                                 )
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsetsDirectional.fromSTEB(16, 8, 0, 8),
//                         child: Container(
//                           width: 250,
//                           height: 170,
//                           decoration: BoxDecoration(
//                             image: DecorationImage(
//                               fit: BoxFit.fitWidth,
//                               image: Image.asset(
//                                 'assets/images/austin-neill-hgO1wFPXl3I-unsplash.jpg',
//                               ).image,
//                             ),
//                             boxShadow: [
//                               BoxShadow(
//                                 blurRadius: 3,
//                                 color: Color(0x64000000),
//                                 offset: Offset(0, 2),
//                               )
//                             ],
//                             borderRadius: BorderRadius.circular(8),
//                           ),
//                           child: Column(
//                             mainAxisSize: MainAxisSize.max,
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Padding(
//                                 padding:
//                                     EdgeInsetsDirectional.fromSTEB(8, 4, 8, 0),
//                                 child: Row(
//                                   mainAxisSize: MainAxisSize.max,
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     Card(
//                                       clipBehavior: Clip.antiAliasWithSaveLayer,
//                                       color: Color(0x9839D2C0),
//                                       elevation: 0,
//                                       shape: RoundedRectangleBorder(
//                                         borderRadius: BorderRadius.circular(8),
//                                       ),
//                                       child: Padding(
//                                         padding: EdgeInsetsDirectional.fromSTEB(
//                                             6, 2, 6, 2),
//                                         child: Text(
//                                           'Eco-friendly Baby products',
//                                           style: FlutterFlowTheme.bodyText2
//                                               .override(
//                                             fontFamily: 'Lexend Deca',
//                                             color: Colors.white,
//                                             fontSize: 14,
//                                             fontWeight: FontWeight.normal,fontStyle: FontStyle.normal,
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                     // Card(
//                                     //   clipBehavior: Clip.antiAliasWithSaveLayer,
//                                     //   color: Color(0xFF1E2429),
//                                     //   elevation: 2,
//                                     //   shape: RoundedRectangleBorder(
//                                     //     borderRadius: BorderRadius.circular(30),
//                                     //   ),
//                                     //   child: Padding(
//                                     //     padding: EdgeInsetsDirectional.fromSTEB(
//                                     //         8, 8, 8, 8),
//                                     //     child: Icon(
//                                     //       Icons.favorite_border,
//                                     //       color: Colors.white,
//                                     //       size: 24,
//                                     //     ),
//                                     //   ),
//                                     // )
//                                   ],
//                                 ),
//                               ),
//                               Container(
//                                 width: 250,
//                                 height: 60,
//                                 decoration: BoxDecoration(
//                                   color: Color(0x9F696868),
//                                   borderRadius: BorderRadius.only(
//                                     bottomLeft: Radius.circular(8),
//                                     bottomRight: Radius.circular(8),
//                                     topLeft: Radius.circular(0),
//                                     topRight: Radius.circular(0),
//                                   ),
//                                 ),
//                                 child: Row(
//                                   mainAxisSize: MainAxisSize.max,
//                                   children: [
//                                     Container(
//                                       width: 60,
//                                       height: 100,
//                                       decoration: BoxDecoration(
//                                         color: Color(0xFFEE8B60),
//                                         borderRadius: BorderRadius.only(
//                                           bottomLeft: Radius.circular(8),
//                                           bottomRight: Radius.circular(0),
//                                           topLeft: Radius.circular(0),
//                                           topRight: Radius.circular(0),
//                                         ),
//                                       ),
//                                       child: Column(
//                                         mainAxisSize: MainAxisSize.max,
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.center,
//                                         children: [
//                                           Padding(
//                                             padding:
//                                                 EdgeInsetsDirectional.fromSTEB(
//                                                     4, 4, 4, 4),
//                                             child: Text(
//                                               '14',
//                                               textAlign: TextAlign.center,
//                                               style: FlutterFlowTheme.title3
//                                                   .override(
//                                                 fontFamily: 'Lexend Deca',
//                                                 color: Colors.white,
//                                                 fontSize: 20,
//                                                 fontWeight: FontWeight.bold,fontStyle: FontStyle.normal,
//                                               ),
//                                             ),
//                                           )
//                                         ],
//                                       ),
//                                     ),
//                                     Padding(
//                                       padding: EdgeInsetsDirectional.fromSTEB(
//                                           8, 0, 0, 0),
//                                       child: Column(
//                                         mainAxisSize: MainAxisSize.max,
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.center,
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.start,
//                                         children: [
//                                           Text(
//                                             'San Antonio Music Festi…',
//                                             style: FlutterFlowTheme.bodyText1
//                                                 .override(
//                                               fontFamily: 'Lexend Deca',
//                                               color: Colors.white,
//                                               fontSize: 14,
//                                               fontWeight: FontWeight.normal,fontStyle: FontStyle.normal,
//                                             ),
//                                           ),
//                                           Text(
//                                             'Sam’s Burger Joint',
//                                             style: FlutterFlowTheme.bodyText1
//                                                 .override(
//                                               fontFamily: 'Lexend Deca',
//                                               color: Colors.white,
//                                               fontSize: 12,
//                                               fontWeight: FontWeight.normal,fontStyle: FontStyle.normal,
//                                             ),
//                                           )
//                                         ],
//                                       ),
//                                     )
//                                   ],
//                                 ),
//                               )
//                             ],
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 0),
//                 child: Row(
//                   mainAxisSize: MainAxisSize.max,
//                   children: [
//                     Text(
//                       'Popular products',
//                       style: FlutterFlowTheme.subtitle2.override(
//                         fontFamily: 'Lexend Deca',
//                         color: Colors.white,
//                         fontSize: 16,
//                         fontWeight: FontWeight.w500,fontStyle: FontStyle.normal,
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
//                 child: SingleChildScrollView(
//                   scrollDirection: Axis.horizontal,
//                   child: Row(
//                     mainAxisSize: MainAxisSize.max,
//                     children: [
//                       Padding(
//                         padding: EdgeInsetsDirectional.fromSTEB(16, 8, 0, 8),
//                         child: InkWell(
//                           onTap: () async {
//                             // await Navigator.push(
//                             //   context,
//                             //   PageTransition(
//                             //     type: PageTransitionType.bottomToTop,
//                             //     duration: Duration(milliseconds: 300),
//                             //     reverseDuration: Duration(milliseconds: 300),
//                             //     child: Cart(),
//                             //   ),
//                             // );
//                             Navigator.pushNamed(context, '/home');
//                           },
//                           child: Container(
//                             width: 130,
//                             height: 170,
//                             decoration: BoxDecoration(
//                               image: DecorationImage(
//                                 fit: BoxFit.contain,
//                                 image: Image.asset(
//                                   'assets/images/91eXRR0hKML._AC_SL1500_.jpg',
//                                 ).image,
//                               ),
//                               boxShadow: [
//                                 BoxShadow(
//                                   blurRadius: 4,
//                                   color: Color(0x64000000),
//                                   offset: Offset(0, 2),
//                                 )
//                               ],
//                               borderRadius: BorderRadius.circular(8),
//                             ),
//                             child: Column(
//                               mainAxisSize: MainAxisSize.max,
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Padding(
//                                   padding: EdgeInsetsDirectional.fromSTEB(
//                                       8, 4, 8, 0),
//                                   child: Row(
//                                     mainAxisSize: MainAxisSize.max,
//                                     mainAxisAlignment: MainAxisAlignment.end,
//                                     children: [
//                                       Card(
//                                         clipBehavior:
//                                             Clip.antiAliasWithSaveLayer,
//                                         color: Color(0xFF1E2429),
//                                         elevation: 2,
//                                         shape: RoundedRectangleBorder(
//                                           borderRadius:
//                                               BorderRadius.circular(30),
//                                         ),
//                                         child: Padding(
//                                           padding:
//                                               EdgeInsetsDirectional.fromSTEB(
//                                                   8, 8, 8, 8),
//                                           child: Icon(
//                                             Icons.favorite_border,
//                                             color: Colors.white,
//                                             size: 24,
//                                           ),
//                                         ),
//                                       )
//                                     ],
//                                   ),
//                                 ),
//                                 Container(
//                                   width: 250,
//                                   height: 60,
//                                   decoration: BoxDecoration(
//                                     color: Color(0xFF090F13),
//                                     borderRadius: BorderRadius.only(
//                                       bottomLeft: Radius.circular(8),
//                                       bottomRight: Radius.circular(8),
//                                       topLeft: Radius.circular(0),
//                                       topRight: Radius.circular(0),
//                                     ),
//                                   ),
//                                   child: Row(
//                                     mainAxisSize: MainAxisSize.max,
//                                     children: [
//                                       Padding(
//                                         padding: EdgeInsetsDirectional.fromSTEB(
//                                             8, 0, 0, 0),
//                                         child: Column(
//                                           mainAxisSize: MainAxisSize.max,
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.center,
//                                           crossAxisAlignment:
//                                               CrossAxisAlignment.start,
//                                           children: [
//                                             Text(
//                                               'Blood Glucose',
//                                               style: FlutterFlowTheme.bodyText1
//                                                   .override(
//                                                 fontFamily: 'Lexend Deca',
//                                                 color: Colors.white,
//                                                 fontSize: 13,
//                                                 fontWeight: FontWeight.normal,fontStyle: FontStyle.normal,
//                                               ),
//                                             ),
//                                             Text(
//                                               'Monitoring system',
//                                               style: FlutterFlowTheme.bodyText1
//                                                   .override(
//                                                 fontFamily: 'Lexend Deca',
//                                                 color: Colors.white,
//                                                 fontSize: 13,
//                                                 fontWeight: FontWeight.normal,fontStyle: FontStyle.normal,
//                                               ),
//                                             ),
//                                             Text(
//                                               'RS: 5050.00',
//                                               style: FlutterFlowTheme.bodyText1
//                                                   .override(
//                                                 fontFamily: 'Lexend Deca',
//                                                 color: Color(0xFFEE8B60),
//                                                 fontSize: 12,
//                                                 fontWeight: FontWeight.normal,fontStyle: FontStyle.normal,
//                                               ),
//                                             )
//                                           ],
//                                         ),
//                                       )
//                                     ],
//                                   ),
//                                 )
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsetsDirectional.fromSTEB(16, 8, 0, 8),
//                         child: InkWell(
//                           onTap: () async {
//                             // await Navigator.push(
//                             //   context,
//                             //   PageTransition(
//                             //     type: PageTransitionType.bottomToTop,
//                             //     duration: Duration(milliseconds: 300),
//                             //     reverseDuration: Duration(milliseconds: 300),
//                             //     child: Cart(),
//                             //   ),
//                             // );
//                             Navigator.pushNamed(context, '/home');
//                           },
//                           child: Container(
//                             width: 130,
//                             height: 170,
//                             decoration: BoxDecoration(
//                               image: DecorationImage(
//                                 fit: BoxFit.contain,
//                                 image: Image.asset(
//                                   'assets/images/ss.jpg',
//                                 ).image,
//                               ),
//                               boxShadow: [
//                                 BoxShadow(
//                                   blurRadius: 3,
//                                   color: Color(0x64000000),
//                                   offset: Offset(0, 2),
//                                 )
//                               ],
//                               borderRadius: BorderRadius.circular(8),
//                             ),
//                             child: Column(
//                               mainAxisSize: MainAxisSize.max,
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Padding(
//                                   padding: EdgeInsetsDirectional.fromSTEB(
//                                       8, 4, 8, 0),
//                                   child: Row(
//                                     mainAxisSize: MainAxisSize.max,
//                                     mainAxisAlignment: MainAxisAlignment.end,
//                                     children: [
//                                       Card(
//                                         clipBehavior:
//                                             Clip.antiAliasWithSaveLayer,
//                                         color: Color(0xFF1E2429),
//                                         elevation: 2,
//                                         shape: RoundedRectangleBorder(
//                                           borderRadius:
//                                               BorderRadius.circular(30),
//                                         ),
//                                         child: Padding(
//                                           padding:
//                                               EdgeInsetsDirectional.fromSTEB(
//                                                   8, 8, 8, 8),
//                                           child: Icon(
//                                             Icons.favorite_border,
//                                             color: Colors.white,
//                                             size: 24,
//                                           ),
//                                         ),
//                                       )
//                                     ],
//                                   ),
//                                 ),
//                                 Container(
//                                   width: 250,
//                                   height: 60,
//                                   decoration: BoxDecoration(
//                                     color: Color(0xFF090F13),
//                                     borderRadius: BorderRadius.only(
//                                       bottomLeft: Radius.circular(8),
//                                       bottomRight: Radius.circular(8),
//                                       topLeft: Radius.circular(0),
//                                       topRight: Radius.circular(0),
//                                     ),
//                                   ),
//                                   child: Row(
//                                     mainAxisSize: MainAxisSize.max,
//                                     children: [
//                                       Padding(
//                                         padding: EdgeInsetsDirectional.fromSTEB(
//                                             8, 0, 0, 0),
//                                         child: Column(
//                                           mainAxisSize: MainAxisSize.max,
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.center,
//                                           crossAxisAlignment:
//                                               CrossAxisAlignment.start,
//                                           children: [
//                                             Text(
//                                               'Spa Ceylon ',
//                                               style: FlutterFlowTheme.bodyText1
//                                                   .override(
//                                                 fontFamily: 'Lexend Deca',
//                                                 color: Colors.white,
//                                                 fontSize: 13,
//                                                 fontWeight: FontWeight.normal,fontStyle: FontStyle.normal,
//                                               ),
//                                             ),
//                                             Text(
//                                               'Night cream',
//                                               style: FlutterFlowTheme.bodyText1
//                                                   .override(
//                                                 fontFamily: 'Lexend Deca',
//                                                 color: Colors.white,
//                                                 fontSize: 13,
//                                                 fontWeight: FontWeight.normal,fontStyle: FontStyle.normal,
//                                               ),
//                                             ),
//                                             Text(
//                                               'RS: 2100.00',
//                                               style: FlutterFlowTheme.bodyText1
//                                                   .override(
//                                                 fontFamily: 'Lexend Deca',
//                                                 color: Color(0xFFEE8B60),
//                                                 fontSize: 12,
//                                                 fontWeight: FontWeight.normal,fontStyle: FontStyle.normal,
//                                               ),
//                                             )
//                                           ],
//                                         ),
//                                       )
//                                     ],
//                                   ),
//                                 )
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsetsDirectional.fromSTEB(16, 8, 0, 8),
//                         child: Container(
//                           width: 130,
//                           height: 170,
//                           decoration: BoxDecoration(
//                             image: DecorationImage(
//                               fit: BoxFit.contain,
//                               image: Image.asset(
//                                 'assets/images/images.jpg',
//                               ).image,
//                             ),
//                             boxShadow: [
//                               BoxShadow(
//                                 blurRadius: 3,
//                                 color: Color(0x64000000),
//                                 offset: Offset(0, 2),
//                               )
//                             ],
//                             borderRadius: BorderRadius.circular(8),
//                           ),
//                           child: Column(
//                             mainAxisSize: MainAxisSize.max,
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Padding(
//                                 padding:
//                                     EdgeInsetsDirectional.fromSTEB(8, 4, 8, 0),
//                                 child: Row(
//                                   mainAxisSize: MainAxisSize.max,
//                                   mainAxisAlignment: MainAxisAlignment.end,
//                                   children: [
//                                     Card(
//                                       clipBehavior: Clip.antiAliasWithSaveLayer,
//                                       color: Color(0xFF1E2429),
//                                       elevation: 2,
//                                       shape: RoundedRectangleBorder(
//                                         borderRadius: BorderRadius.circular(30),
//                                       ),
//                                       child: Padding(
//                                         padding: EdgeInsetsDirectional.fromSTEB(
//                                             8, 8, 8, 8),
//                                         child: Icon(
//                                           Icons.favorite_border,
//                                           color: Colors.white,
//                                           size: 24,
//                                         ),
//                                       ),
//                                     )
//                                   ],
//                                 ),
//                               ),
//                               Container(
//                                 width: 250,
//                                 height: 60,
//                                 decoration: BoxDecoration(
//                                   color: Color(0xFF090F13),
//                                   borderRadius: BorderRadius.only(
//                                     bottomLeft: Radius.circular(8),
//                                     bottomRight: Radius.circular(8),
//                                     topLeft: Radius.circular(0),
//                                     topRight: Radius.circular(0),
//                                   ),
//                                 ),
//                                 child: Row(
//                                   mainAxisSize: MainAxisSize.max,
//                                   children: [
//                                     Padding(
//                                       padding: EdgeInsetsDirectional.fromSTEB(
//                                           8, 0, 0, 0),
//                                       child: Column(
//                                         mainAxisSize: MainAxisSize.max,
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.center,
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.start,
//                                         children: [
//                                           Text(
//                                             'COVID - Oximeter',
//                                             style: FlutterFlowTheme.bodyText1
//                                                 .override(
//                                               fontFamily: 'Lexend Deca',
//                                               color: Colors.white,
//                                               fontSize: 14,
//                                               fontWeight: FontWeight.normal,fontStyle: FontStyle.normal,
//                                             ),
//                                           ),
//                                           Text(
//                                             'RS: 3000.00',
//                                             style: FlutterFlowTheme.bodyText1
//                                                 .override(
//                                               fontFamily: 'Lexend Deca',
//                                               color: Color(0xFFEE8B60),
//                                               fontSize: 12,
//                                               fontWeight: FontWeight.normal,fontStyle: FontStyle.normal,
//                                             ),
//                                           )
//                                         ],
//                                       ),
//                                     )
//                                   ],
//                                 ),
//                               )
//                             ],
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

