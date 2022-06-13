import 'package:flutter/material.dart';
import 'package:weather_app/data_service.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Weather extends StatefulWidget {
  const Weather({Key? key}) : super(key: key);

  @override
  State<Weather> createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
  String place = '';
  String descr = '';
  String tempe = '';
  final _cityTextController = TextEditingController();
  final _dataService = DataService();

  @override
  Widget build(BuildContext context) {
      return Scaffold(
      resizeToAvoidBottomInset : false,
      body:Column(
        children: [         
        
              //city name
              const SizedBox(height: 30),
              Container(
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width,
                color: Colors.red,
                // padding: EdgeInsets.fromLTRB(0, 0, 100, 0),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
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
                  
              ),

              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ListView(
                    children: [
                      ListTile(
                        leading: Icon(
                          Icons.home,
                          // color: Colors.black,
                          ),
                        title: Text(
                          'Place',
                          // style: TextStyle(color: Colors.black),
                          ),
                        trailing: Text(place),
                      ),

                      ListTile(
                        leading: FaIcon(FontAwesomeIcons.cloud),
                        title: Text(
                          'Temperature',
                          // style: TextStyle(color: Colors.black),
                          ),
                        trailing: Text('52'+'\u00B0'+'C'),
                      ),
                    ],
                  ),
                ),
              ),
        ]
      ),
    );

    
  }

  String hum = '';
  String press = '';
  double tem = 0;
  int hu = 0;
  int pre = 0;

  Future<void> _search() async {
    final response = await _dataService.getWeather(_cityTextController.text);
    setState((){});
    

    place = response.name!;
    tem = response.main!.temp!;
    hu = response.main!.humidity!;
    pre = response.main!.pressure!;
    descr = response.weather![0].description!;
    hum = hu.toString();
    press = pre.toString();
    tempe = tem.toString() + 'F';
    
  }

}
