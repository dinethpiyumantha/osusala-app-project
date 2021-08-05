import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:osusala/constraints.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  static const _initialCameraPosition = CameraPosition(
    target: LatLng(7.503635739043013, 80.36395063286321),
    zoom: 11.5,
  );

  late GoogleMapController _googleMapController;

  changeMapMode() {
    getJsonFile('assets/map_light.json').then(setMapStyle);
  }

  Future<String> getJsonFile(String path) async {
    return await rootBundle.loadString(path);
  }

  void setMapStyle(String style) {
    _googleMapController.setMapStyle(style);
  }

  @override
  void dispose() {
    _googleMapController.dispose();
    super.dispose();
  }

  //Auto Complete
  bool isLoading = false;

  late List<String> autoCompLocations;

  Future fetchAutoCompleteData() async {
    setState(() {
      isLoading = true;
    });

    final String locationData =
        await rootBundle.loadString('assets/locations.json');

    final List<dynamic> json = jsonDecode(locationData);

    final List<String> jsonLocatons = json.cast<String>();

    setState(() {
      isLoading = false;
      autoCompLocations = jsonLocatons;
    });
  }

  @override
  void initState() {
    super.initState();
    fetchAutoCompleteData();
  }

  @override
  Widget build(BuildContext context) {
    changeMapMode();

    return Scaffold(
      extendBodyBehindAppBar: true,
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
      body: Stack(
        children: <Widget>[
          GoogleMap(
            zoomControlsEnabled: false,
            initialCameraPosition: _initialCameraPosition,
            onMapCreated: (GoogleMapController controller) {
              _googleMapController = controller;
              changeMapMode();
            },
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 80),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            width: MediaQuery.of(context).size.width - 2 * 20,
            height: 90,
            decoration: BoxDecoration(
              color: oWhiteColor,
              boxShadow: [
                BoxShadow(
                  offset: Offset(2, 2),
                  blurRadius: 5,
                  color: oPrimaryColor.withOpacity(0.1),
                )
              ],
              borderRadius: BorderRadius.circular(25),
              border: Border.all(
                width: 2,
                color: oLightColor,
              ),
            ),
            child: isLoading
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Search OSUSALA Location',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: oSecondaryColor,
                            fontFamily: defaltFontFamily,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Autocomplete(
                        optionsBuilder: (TextEditingValue textEditingValue) {
                          if (textEditingValue.text.isEmpty) {
                            return const Iterable<String>.empty();
                          } else {
                            return autoCompLocations.where((word) => word
                                .toLowerCase()
                                .contains(textEditingValue.text.toLowerCase()));
                          }
                        },
                        fieldViewBuilder: (context, controller, focusNode,
                            onEditingComplete) {
                          return Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 0, vertical: 0),
                            child: TextField(
                              cursorColor: oSuccessColor,
                              cursorWidth: 2.5,
                              cursorRadius: Radius.circular(2),
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                height: 1.5,
                                fontFamily: defaltFontFamily,
                                fontSize: 18,
                              ),
                              controller: controller,
                              focusNode: focusNode,
                              onEditingComplete: onEditingComplete,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.zero,
                                suffixIcon: Icon(
                                  Icons.search,
                                  color: oSuccessColor,
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
                                    color: Colors.transparent,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: oSuccessColor,
        foregroundColor: oLightColor,
        onPressed: () => _googleMapController.animateCamera(
          CameraUpdate.newCameraPosition(_initialCameraPosition),
        ),
        elevation: 0,
        child: const Icon(Icons.center_focus_strong),
      ),
    );
  }
}
