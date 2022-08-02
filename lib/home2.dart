import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/data_service.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return profile();
  }
}

//Profile Page
class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  String day = DateFormat.EEEE().format(DateTime.now());
  String time = DateFormat('KK:mma').format(DateTime.now());
  String month = DateFormat.MMMMd().format(DateTime.now());

  var lat = '';
  var long = '';

  void getCurrentLocation() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    var lati = position.latitude;
    var longi = position.longitude;
    setState(() {
      lat = lati.toString();
      long = longi.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    getCurrentLocation();
    _search();

    final height = MediaQuery.of(context).size.height;
    final widht = MediaQuery.of(context).size.height;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        //Background Color
        Positioned(
          bottom: 0,
          top: 0,
          left: 0,
          right: 0,
          child: Container(
            height: height,
            width: widht,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF115ea4), Color(0xFF115ea4)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
        ),

        //time day month cloud place
        Positioned(
          top: 100,
          left: 0,
          right: 0,
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0x1ad9d9d9),
                  border: Border.all(
                    color: Color.fromARGB(57, 77, 62, 62),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              height: 180,
              width: 350,
              child: Stack(clipBehavior: Clip.none, children: [
                //Time
                Positioned(
                  top: 20,
                  left: 20,
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(),
                      child: Text(
                        time,
                        style: TextStyle(
                          fontSize: 40,
                          color: Color(0xffffffff),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),

                //Day
                Positioned(
                  bottom: 60,
                  left: 20,
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(),
                      child: Text(
                        day,
                        style: TextStyle(
                          fontSize: 30,
                          color: Color(0xffffffff),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),

                //Month
                Positioned(
                  bottom: 20,
                  left: 20,
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(),
                      child: Text(
                        month,
                        style: TextStyle(
                          fontSize: 30,
                          color: Color(0xffffffff),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),

                //cloud description
                Positioned(
                  bottom: 50,
                  right: 20,
                  child: Text(
                      style: TextStyle(
                        color: Color(0xffffffff),
                      ),
                      descr),
                ),

                //Cloud
                Positioned(
                  top: -40,
                  right: -40,
                  child: Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://openweathermap.org/img/wn/$icon@4x.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),

                //City
                Positioned(
                  bottom: 20,
                  right: 20,
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(),
                      child: Text(
                        place,
                        style: TextStyle(
                          fontSize: 30,
                          color: Color(0xffffffff),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ),

        //Data
        Positioned(
          bottom: 0,
          left: 0,
          child: Center(
            child: Container(
              height: 450,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              decoration: BoxDecoration(
                  color: Color(0x1ad9d9d9),
                  border: Border.all(
                    color: Color.fromARGB(57, 77, 62, 62),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Stack(
                // clipBehavior: Clip.none,
                children: [
                  Positioned(
                    top: -70,
                    right: 0,
                    left: 0,
                    child: Center(
                      child: Container(
                        height: 460,
                        child: ListView(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Color(0x40d9d9d9),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: ListTile(
                                leading: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(0),
                                    image: DecorationImage(
                                      image: AssetImage('assets/place.png'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                title: Text(
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  ),
                                  'Place',
                                  // style: TextStyle(color: Colors.black),
                                ),
                                trailing: Text(
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 255, 255, 255)),
                                    place),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                              decoration: BoxDecoration(
                                  color: Color(0x40d9d9d9),
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                              child: ListTile(
                                leading: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    image: DecorationImage(
                                      image:
                                          AssetImage('assets/description.png'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                title: Text(
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255)),
                                  'Description',
                                ),
                                trailing: Text(
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 255, 255, 255)),
                                    descr),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                              decoration: BoxDecoration(
                                  color: Color(0x40d9d9d9),
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                              child: ListTile(
                                leading: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    image: DecorationImage(
                                      image:
                                          AssetImage('assets/temperature.png'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                title: Text(
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255)),
                                  'Temperature',
                                  // style: TextStyle(color: Colors.black),
                                ),
                                trailing: Text(
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 255, 255, 255)),
                                    tempe),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                              decoration: BoxDecoration(
                                  color: Color(0x40d9d9d9),
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                              child: ListTile(
                                leading: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      image: AssetImage('assets/perceived.png'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                title: Text(
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255)),
                                  'Perceived',
                                  // style: TextStyle(color: Colors.black),
                                ),
                                trailing: Text(
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 255, 255, 255)),
                                    percive),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                              decoration: BoxDecoration(
                                  color: Color(0x40d9d9d9),
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                              child: ListTile(
                                leading: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    image: DecorationImage(
                                      image: AssetImage('assets/pressure.png'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                title: Text(
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255)),
                                  'Pressure',
                                  // style: TextStyle(color: Colors.black),
                                ),
                                trailing: Text(
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 255, 255, 255)),
                                    press),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                              decoration: BoxDecoration(
                                  color: Color(0x40d9d9d9),
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                              child: ListTile(
                                leading: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(0),
                                    image: DecorationImage(
                                      image: AssetImage('assets/humidity.png'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                title: Text(
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255)),
                                  'Humidity',
                                  // style: TextStyle(color: Colors.black),
                                ),
                                trailing: Text(
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 255, 255, 255)),
                                    hum),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),

        
      ],
    );
  }

  String place = '';
  String descr = '';
  String tempe = '';
  String percive = '';
  String hum = '';
  String press = '';
  String icon = '';
  double tem = 0;
  double tem1 = 0;
  double feels = 0;
  int hu = 0;
  int pre = 0;

  final _dataService = DataService();

  Future<void> _search() async {
    final response = await _dataService.getWeather('', lat, long);
    setState(() {});

    place = response.name!;
    tem1 = response.main!.temp!;
    feels = response.main!.feelsLike!;
    feels = double.parse(((feels - 32) * 5 / 9).toStringAsFixed(2));
    tem = double.parse(((tem1 - 32) * 5 / 9).toStringAsFixed(2));
    hu = response.main!.humidity!;
    pre = response.main!.pressure!;
    descr = response.weather![0].description!;
    icon = response.weather![0].icon!;
    hum = hu.toString() + '%';
    ;
    press = pre.toString() + ' hPa';
    tempe = tem.toString() + '\u00B0' + 'C';
    percive = feels.toString() + '\u00B0' + 'C';
  }
}
