import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:osusala/flutter_flow/flutter_flow_theme.dart';

import '../../../constraints.dart';

class ChatPageWidget extends StatefulWidget {
  // HomePageWidget({Key key}) : super(key: key);

  @override
  _ChatPageWidgetState createState() => _ChatPageWidgetState();
}

class _ChatPageWidgetState extends State<ChatPageWidget> {
  late TextEditingController textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: oSecondaryColor,
        automaticallyImplyLeading: true,
        title: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(2, 2, 3, 8),
              child: Image.asset(
                'assets/images/greenlogo.png',
                width: 50,
                height: 50,
                fit: BoxFit.fitHeight,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
              child: Text(
                'OsuSala Chat',
                style: FlutterFlowTheme.bodyText1.override(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w800, fontStyle: FontStyle.normal,
                ),
              ),
            )
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
            child: Icon(
              Icons.delete_outline_outlined,
              color: Color(0xFFBA0202),
              size: 29,
            ),
          )
        ],
        centerTitle: true,
        elevation: 10,
      ),
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: 390,
              height: 580,
              constraints: BoxConstraints(
                maxWidth: double.infinity,
              ),
              decoration: BoxDecoration(
                color: Color(0xFFEEEEEE),
              ),
              child: Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                color: oLightColor,
                elevation: 1,
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                  child: Text(
                    'Please let us know \nhow we can help you!',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.bodyText1.override(
                      fontFamily: 'Poppins',
                      color: oSecondaryColor, fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                    child: TextFormField(
                      controller: textController,
                      obscureText: false,
                      decoration: InputDecoration(
                        hintText: 'Type message..',
                        hintStyle: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'Poppins',
                          fontSize: 16, fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, color: Colors.black,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xD67B7878),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xD67B7878),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        filled: true,
                        fillColor: Color(0x7CD5D0D0),
                        contentPadding:
                            EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                      ),
                      style: FlutterFlowTheme.bodyText1.override(
                        fontFamily: 'Poppins',
                        fontSize: 16, fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
                  child: Icon(
                    Icons.send_sharp,
                    color: Colors.black,
                    size: 30,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
