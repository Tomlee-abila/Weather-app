import 'package:flutter/material.dart';
import 'package:weather_app/data_service.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Weather extends StatefulWidget {
  const Weather({Key? key}) : super(key: key);

  @override
  State<Weather> createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
  
  final _cityTextController = TextEditingController();
  final _dataService = DataService();

  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.of(context).size.height;
    final widht = MediaQuery.of(context).size.height;
    
 return SafeArea(
      child: Stack(
        children: [
          
          Container(
            color: Colors.red,
            height: height,
            width: widht,
            padding: const EdgeInsets.all(20.0),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                  child: TextField(
                  controller: _cityTextController,
                  decoration: InputDecoration(
                    labelText: 'enter city name',
                    suffixIcon: Icon(Icons.search),
                  ),
              ),
                ),
                    
                ElevatedButton(onPressed: () {
                _search(); 
                place = _cityTextController.text;
                }, child: Text('Search')),
              ]
              ),

          ),

          // Positioned(
          //   bottom: height / 3,
          //   child: Container(
              

          //     decoration: new BoxDecoration(
          //       color: Color.fromARGB(255, 225, 16, 16),
          //       borderRadius: new BorderRadius.only(
          //         topLeft: const Radius.circular(40.0),
          //         topRight: const Radius.circular(40.0),
          //       )
          //     ),

          //     child: Expanded(
          //       child: Container(
          //         padding: const EdgeInsets.all(20.0),
          //         child: Column(
          //           mainAxisAlignment: MainAxisAlignment.center,
          //           crossAxisAlignment: CrossAxisAlignment.center,
          //           children: [
          //             Container(
          //               padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
          //               child: TextField(
          //               controller: _cityTextController,
          //               decoration: InputDecoration(
          //                 labelText: 'enter city name',
          //                 suffixIcon: Icon(Icons.search),
          //               ),
          //           ),
          //             ),
                          
          //             ElevatedButton(onPressed: () {
          //             _search(); 
          //             place = _cityTextController.text;
          //             }, child: Text('Search')),
          //           ]
          //           ),
          //       ),

          //       ),

          //   ),
          //   ),
          
    
          Positioned(
            bottom: 0,
            child: Container(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              // color: Color.fromARGB(255, 204, 255, 204),

            decoration: new BoxDecoration(
              color: Color.fromARGB(255, 204, 255, 204),
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
                    ListTile(
                      leading:FaIcon(FontAwesomeIcons.locationDot),
                      title: Text(
                        'Place',
                        // style: TextStyle(color: Colors.black),
                        ),
                      subtitle: Text(place),
                    ),
          
                    ListTile(
                      leading: FaIcon(FontAwesomeIcons.cloud),
                      title: Text(
                        'Description',
                        // style: TextStyle(color: Colors.black),
                        ),
                      subtitle: Text(descr),
                    ),
          
                    ListTile(
                      leading: FaIcon(FontAwesomeIcons.temperatureHalf),
                      title: Text(
                        'Temperature',
                        // style: TextStyle(color: Colors.black),
                        ),
                      subtitle: Text(tempe+'\u00B0'+'C'),
                    ),
          
                    ListTile(
                      leading: FaIcon(FontAwesomeIcons.temperatureHalf),
                      title: Text(
                        'Perceived',
                        // style: TextStyle(color: Colors.black),
                        ),
                      subtitle: Text('52'+'\u00B0'+'C'),
                    ),
          
                    ListTile(
                      leading: FaIcon(FontAwesomeIcons.tachometer),
                      title: Text(
                        'Pressure',
                        // style: TextStyle(color: Colors.black),
                        ),
                      subtitle: Text(press),
                    ),
          
                    ListTile(
                      leading: FaIcon(FontAwesomeIcons.tint),
                      title: Text(
                        'Humidity',
                        // style: TextStyle(color: Colors.black),
                        ),
                      subtitle: Text(hum),
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

  Future<void> _search() async {
    final response = await _dataService.getWeather(_cityTextController.text);
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


//  child:  Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Container(
//                       padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
//                       child: TextField(
//                       controller: _cityTextController,
//                       decoration: InputDecoration(
//                         labelText: 'enter city name',
//                         suffixIcon: Icon(Icons.search),
//                       ),
//                   ),
//                     ),
                        
//                     ElevatedButton(onPressed: () {
//                     _search(); 
//                     place = _cityTextController.text;
//                     }, child: Text('Search')),
//                   ]
//                   ),
