import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:weather_app/profile.dart';
import 'package:weather_app/weather.dart';
import 'homepage.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:geolocator/geolocator.dart';


void main(){
  runApp(const MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
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



  int _selectedIndex = 0;

  void _navigationBottonBar(int index){
    setState((){
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    HomePage(),
    Weather(),
    Profile(),
    
  ];

  @override
  Widget build(BuildContext context) {
    _determinePosition();

    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: AnimatedSplashScreen(
        splash: Image.asset('assets/weather2.png'),
       nextScreen: HomePage(),
       splashTransition: SplashTransition.decoratedBoxTransition,
       backgroundColor: Colors.redAccent,
       
      ),
    );
    
    // return MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   // theme: ThemeData(primarySwatch: Colors.green),
    //   // home: HomePage(),
    //   home: Scaffold(
         
          

    //     bottomNavigationBar: GNav(
    //       selectedIndex: _selectedIndex,
    //       backgroundColor: Color(0xFF9575CD),
    //       color: Colors.white,
    //       gap: 8,
    //       activeColor: Colors.white,
    //       tabBackgroundColor: Color.fromARGB(255, 90, 90, 90),
    //       padding: EdgeInsets.all(16),   
          
    //       onTabChange: _navigationBottonBar,
    //       tabs: [
    //         GButton(icon: Icons.home, text: 'Home',),
    //         GButton(icon: Icons.filter_drama, text: 'Weather'),
    //         GButton(icon: Icons.person, text: 'Profile'),
    //       ]
    //     ),
    //     body: _pages[_selectedIndex],
      

    //     // body: HomePage(),
    //   ),
    // );
  }
}