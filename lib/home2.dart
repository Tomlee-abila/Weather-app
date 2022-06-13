import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {

  Future<Position> _determinePosition() async {
  bool serviceEnabled;
  LocationPermission permission;

  // Test if location services are enabled.
  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    // Location services are not enabled don't continue
    // accessing the position and request users of the 
    // App to enable the location services.
    return Future.error('Location services are disabled.');
  }

  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      // Permissions are denied, next time you could try
      // requesting permissions again (this is also where
      // Android's shouldShowRequestPermissionRationale 
      // returned true. According to Android guidelines
      // your App should show an explanatory UI now.
      return Future.error('Location permissions are denied');
    }
  }
  
  if (permission == LocationPermission.deniedForever) {
    // Permissions are denied forever, handle appropriately. 
    return Future.error(
      'Location permissions are permanently denied, we cannot request permissions.');
  } 

  // When we reach here, permissions are granted and we can
  // continue accessing the position of the device.
  return await Geolocator.getCurrentPosition();
}

  @override
  Widget build(BuildContext context) {

    // _determinePosition();

    final height = MediaQuery.of(context).size.height;
    final widht = MediaQuery.of(context).size.height;
    var inputBorder = OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.all(
                          Radius.circular(30.0),
                        ),
                      );
    return Stack(
      children: [
        Positioned(
          bottom: height / 2.4,
          child: Image.asset(
            'assets/new-york.jpg',
            height: height,
            fit: BoxFit.fill,
            ),
          ),
        Positioned(
          bottom: 0,
          child: Container(
            height: height / 2.4,
            width: widht,
            color: Color(0xFF2D2C35),
          )
          ),
        Scaffold(
          backgroundColor: Colors.black45,
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 18),
            child: DefaultTextStyle(
              style: TextStyle(color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 100,),
                  Text(
                    'Hello',
                    style: TextStyle(fontSize: 30),
                  ),
                  Text(
                    'Check the weather by the city',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
                  ),

                  SizedBox(height: 35),
                  TextField(
                    decoration: InputDecoration(
                      border: inputBorder,
                      enabledBorder: inputBorder,
                      focusedBorder: inputBorder,
                      hintText: 'Search city',
                      hintStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w600
                      ),
                      suffixIcon: Icon(Icons.search, color: Colors.white,)

                    ),
                  ),
                ]
                ),
            ),
          ),
        ),
      ],
      );
  }
}
