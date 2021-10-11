import 'package:flutter/material.dart';
import 'package:osusala/flutter_flow/flutter_flow_icon_button.dart';
import 'package:osusala/flutter_flow/flutter_flow_theme.dart';

import '../../../constraints.dart';

class Cart extends StatelessWidget {
  // const ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CartPageWidget(),
    );
  }
}

class CartPageWidget extends StatefulWidget {
  // CartPageWidget({Key key}) : super(key: key);

  @override
  _CartPageWidgetState createState() => _CartPageWidgetState();
}

class _CartPageWidgetState extends State<CartPageWidget> {
  bool _loadingButton = false;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          fillColor: Colors.white,
          borderWidth: 0.0,
          buttonSize: 46,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Color(0xFF95A1AC),
            size: 24,
          ),
          onPressed: () async {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'My Cart',
          style: FlutterFlowTheme.subtitle1.override(
            fontFamily: 'Lexend Deca',
            color: Color(0xFF151B1E),
            fontSize: 18,
            fontWeight: FontWeight.w500, fontStyle: FontStyle.normal,
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(1, 0, 0, 0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.96,
                        height: 345,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 3,
                              color: Color(0x49000000),
                              offset: Offset(0, 1),
                            )
                          ],
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: Color(0xFFDBE2E7),
                            width: 1,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 12),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Order Summary',
                        style: FlutterFlowTheme.subtitle2.override(
                          fontFamily: 'Lexend Deca',
                          color: Color(0xFF090F13),
                          fontSize: 16,
                          fontWeight: FontWeight.w500, fontStyle: FontStyle.normal,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 4),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Subtotal',
                        style: FlutterFlowTheme.bodyText2.override(
                          fontFamily: 'Lexend Deca',
                          color: Color(0xFF8B97A2),
                          fontSize: 14,
                          fontWeight: FontWeight.normal, fontStyle: FontStyle.normal,
                        ),
                      ),
                      Text(
                        '[Price]',
                        textAlign: TextAlign.end,
                        style: FlutterFlowTheme.subtitle2.override(
                          fontFamily: 'Lexend Deca',
                          color: Color(0xFF111417),
                          fontSize: 16,
                          fontWeight: FontWeight.bold, fontStyle: FontStyle.normal,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 4),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Tax',
                        style: FlutterFlowTheme.bodyText2.override(
                          fontFamily: 'Lexend Deca',
                          color: Color(0xFF8B97A2),
                          fontSize: 14,
                          fontWeight: FontWeight.normal, fontStyle: FontStyle.normal,
                        ),
                      ),
                      Text(
                        '[Price]',
                        textAlign: TextAlign.end,
                        style: FlutterFlowTheme.subtitle2.override(
                          fontFamily: 'Lexend Deca',
                          color: Color(0xFF111417),
                          fontSize: 16,
                          fontWeight: FontWeight.bold, fontStyle: FontStyle.normal,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 12),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Order Total',
                        style: FlutterFlowTheme.bodyText2.override(
                          fontFamily: 'Lexend Deca',
                          color: Color(0xFF8B97A2),
                          fontSize: 14,
                          fontWeight: FontWeight.normal, fontStyle: FontStyle.normal,
                        ),
                      ),
                      Text(
                        '[Price]',
                        textAlign: TextAlign.end,
                        style: FlutterFlowTheme.subtitle2.override(
                          fontFamily: 'Lexend Deca',
                          color: Color(0xFF111417),
                          fontSize: 16,
                          fontWeight: FontWeight.bold, fontStyle: FontStyle.normal,
                        ),
                      )
                    ],
                  ),
                ),
                Divider(
                  height: 2,
                  thickness: 1,
                  indent: 16,
                  endIndent: 16,
                  color: Colors.transparent,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 24),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Subtotal',
                        style: FlutterFlowTheme.bodyText2.override(
                          fontFamily: 'Lexend Deca',
                          color: Color(0xFF8B97A2),
                          fontSize: 14,
                          fontWeight: FontWeight.normal, fontStyle: FontStyle.normal,
                        ),
                      ),
                      Text(
                        '[Order Total]',
                        textAlign: TextAlign.end,
                        style: FlutterFlowTheme.title3.override(
                          fontFamily: 'Lexend Deca',
                          color: Color(0xFF8B97A2),
                          fontSize: 20,
                          fontWeight: FontWeight.bold, fontStyle: FontStyle.normal,
                        ),
                      )
                    ],
                  ),
                ),
                // FFButtonWidget(
                //   onPressed: () {
                //     print('Button pressed ...');
                //   },
                //   text: 'Proceed to Checkout',
                //   options: FFButtonOptions(
                //     width: 320,
                //     height: 60,
                //     color: Color(0xFF28F88C),
                //     textStyle: FlutterFlowTheme.subtitle2.override(
                //       fontFamily: 'Lexend Deca',
                //       color: Colors.white,
                //       fontSize: 16,
                //       fontWeight: FontWeight.w500, fontStyle: FontStyle.normal,
                //     ),
                //     elevation: 2,
                //     borderSide: BorderSide(
                //       color: Colors.transparent,
                //       width: 1,
                //     ),
                //     borderRadius: 8,
                //   ),
                //   loading: _loadingButton,
                // )
          SizedBox(
            height: 50,
            width: MediaQuery.of(context).size.width - 2 * 20,
            child: TextButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('/home');
              },
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(oSuccessColor),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    side: BorderSide(color: oSuccessColor, width: 2),
                  ),
                ),
              ),
              child: Text(
                "PROCEED TO CHECKOUT",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: defaltFontFamily,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '2021 Developed by Team DevAlgo',
                  style: TextStyle(
                    color: oSecondaryColor,
                    fontFamily: defaltFontFamily,
                    fontSize: 10,
                    height: 3.0,
                  ),
                ),
              ],
            )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
