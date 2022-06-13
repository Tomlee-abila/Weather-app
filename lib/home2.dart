import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app/data_service.dart';

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
    return SafeArea(
      child: Stack(
        children: [
          Container(
            color: Color(0xEE2D2F49),
            height: height,
            width: widht,
            padding: const EdgeInsets.all(20.0),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                  child: Column(
                    children: [
                      Text(
                        'Location',
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.w900,
                        ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                          child: Text(
                            '58',
                            style: TextStyle(
                              color: Colors.purple,
                              fontSize: 40.0,
                              fontWeight: FontWeight.w900,
                              fontFamily: 'Pacifico'
                            ),
                            ),

                          ),
                    ],
                  )
                ),
                    
                
              ]
              ),

          ),
          
    
        Positioned(
        bottom: 0,
        child: Container(
          height: MediaQuery.of(context).size.height / 2,
          width: MediaQuery.of(context).size.width,
          // color: Color.fromARGB(255, 204, 255, 204),

        decoration: new BoxDecoration(
          color: Color(0xE7382E4E),
          borderRadius: new BorderRadius.only(
            topLeft: const Radius.circular(40.0),
            topRight: const Radius.circular(40.0),
          )
        ),
        
          
          child: Expanded(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListView(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color(0x844D3E3E),
                    border: Border.all(
                      color: Color(0x844D3E3E),                         
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(60))
                  ),
                  child: ListTile(
                    leading:FaIcon(
                      color: Colors.white,
                      FontAwesomeIcons.locationDot),
                    title: Text(
                        style: TextStyle(color: Colors.white),
                      'Place',
                      // style: TextStyle(color: Colors.black),
                      ),
                    subtitle: Text(
                        style: TextStyle(color: Colors.white),place),
                  ),
                ),
      
                SizedBox(height: 10,),
                Container(                      
                  decoration: BoxDecoration(
                    color: Color(0x844D3E3E),
                    border: Border.all(
                      color: Color(0x844D3E3E),                         
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(60))
                  ),
                  child: ListTile(
                    leading: FaIcon(                          
                      color: Colors.white,
                      FontAwesomeIcons.cloud),
                    title: Text(
                      style: TextStyle(color: Colors.white),
                      'Description',                          
                      ),
                    subtitle: Text(
                      style: TextStyle(color: Colors.white),                          
                      descr),
                  ),
                ),
      
                SizedBox(height: 10,),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0x844D3E3E),
                    border: Border.all(
                      color: Color(0x844D3E3E),                         
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(60))
                  ),
                  child: ListTile(
                    leading: FaIcon(
                        color: Colors.white,FontAwesomeIcons.temperatureHalf),
                    title: Text(
                        style: TextStyle(color: Colors.white),
                      'Temperature',
                      // style: TextStyle(color: Colors.black),
                      ),
                    subtitle: Text(
                        style: TextStyle(color: Colors.white),tempe+'\u00B0'+'C'),
                  ),
                ),
      
                SizedBox(height: 10,),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0x844D3E3E),
                    border: Border.all(
                      color: Color(0x844D3E3E),                         
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(60))
                  ),
                  child: ListTile(
                    leading: FaIcon(
                        color: Colors.white,FontAwesomeIcons.temperatureHalf),
                    title: Text(
                        style: TextStyle(color: Colors.white),
                      'Perceived',
                      // style: TextStyle(color: Colors.black),
                      ),
                    subtitle: Text(
                        style: TextStyle(color: Colors.white),'52'+'\u00B0'+'C'),
                  ),
                ),
      
                SizedBox(height: 10,),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0x844D3E3E),
                    border: Border.all(
                      color: Color(0x844D3E3E),                         
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(60))
                  ),
                  child: ListTile(
                    leading: FaIcon(
                        color: Colors.white,FontAwesomeIcons.tachometer),
                    title: Text(
                        style: TextStyle(color: Colors.white),
                      'Pressure',
                      // style: TextStyle(color: Colors.black),
                      ),
                    subtitle: Text(
                        style: TextStyle(color: Colors.white),press),
                  ),
                ),
      
                SizedBox(height: 10,),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0x844D3E3E),
                    border: Border.all(
                      color: Color(0x844D3E3E),                         
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(60))
                  ),
                  child: ListTile(
                    leading: FaIcon(
                        color: Colors.white,FontAwesomeIcons.tint),
                    title: Text(
                        style: TextStyle(color: Colors.white),
                      'Humidity',
                      // style: TextStyle(color: Colors.black),
                      ),
                    subtitle: Text(
                        style: TextStyle(color: Colors.white),hum),
                  ),
                ),
              ],
            ),
          ),
                    ),
        ),
      ),

        ],
        ),
    );
      
  }

  String place = '';
  String descr = '';
  String tempe = '';
  String hum = '';
  String press = '';
  double tem = 0;
  double tem1 = 0;
  int hu = 0;
  int pre = 0;

  final _dataService = DataService();

  Future<void> _search() async {
    final response = await _dataService.getWeather('');
    setState((){});
    

    place = response.name!;
    tem1 = response.main!.temp!;
    tem = double.parse(((tem1 - 32) * 5/9).toStringAsFixed(2));
    hu = response.main!.humidity!;
    pre = response.main!.pressure!;
    descr = response.weather![0].description!;
    hum = hu.toString();
    press = pre.toString() + ' hPa';
    tempe = tem.toString();
    
  }
}
