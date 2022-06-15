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
            color: Color.fromARGB(255, 255, 255, 255),
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
                    

              SizedBox(height: 10.0),
              GestureDetector(
              onTap: () {
                _search();
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Color(0xE7382E4E),
                    borderRadius: BorderRadius.circular(33),
                  ),
                  child: Center(
                      child: Text(
                        'Search',
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          // fontWeight: FontWeight.bold,
                          // fontSize: 20,
                        ),
                      )
                  ),
                ),
              ),
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
                        trailing: Text(
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
                        trailing: Text(
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
                        trailing: Text(
                            style: TextStyle(color: Colors.white),tempe),
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
                        trailing: Text(
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
                        trailing: Text(
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
                        trailing: Text(
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

  Future<void> _search() async {
    final response = await _dataService.getWeather(_cityTextController.text,'','');
    setState((){});
    

    place = response.name!;
    tem1 = response.main!.temp!;
    tem = double.parse(((tem1 - 32) * 5/9).toStringAsFixed(2));
    hu = response.main!.humidity!;
    pre = response.main!.pressure!;
    descr = response.weather![0].description!;
    hum = hu.toString();
    press = pre.toString() + ' hPa';
    tempe = tem.toString() +'\u00B0'+'C';
    
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
