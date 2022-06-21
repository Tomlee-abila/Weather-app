import 'package:flutter/material.dart';
import 'package:weather_app/data_service.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Weather extends StatefulWidget {
  const Weather({Key? key}) : super(key: key);

  @override
  State<Weather> createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
  @override
  Widget build(BuildContext context) {

    return secondBody();
    
  }
}
  
 

class firstBody extends StatefulWidget {
  const firstBody({Key? key}) : super(key: key);

  @override
  State<firstBody> createState() => _firstBodyState();
}

class _firstBodyState extends State<firstBody> {
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
                        leading:Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(0),
                              image: DecorationImage(                
                                image: NetworkImage('https://cdn-icons.flaticon.com/png/512/1865/premium/1865269.png?token=exp=1655723785~hmac=a2fef776d6abda89d2a686444cd4442d'),
                                fit: BoxFit.cover,                    
                                ),
                            ),
                          ),
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
                        leading: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              image: DecorationImage(                
                                image: NetworkImage('https://cdn-icons-png.flaticon.com/512/2675/2675879.png'),
                                fit: BoxFit.cover,                    
                                ),
                            ),
                          ),
                        
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
                        leading: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              image: DecorationImage(                
                                image: NetworkImage('https://cdn-icons-png.flaticon.com/512/2622/2622352.png'),
                                fit: BoxFit.cover,                    
                                ),
                            ),
                          ),
                        
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
                        leading:Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(                
                                image: NetworkImage('https://cdn-icons-png.flaticon.com/512/3815/3815449.png'),
                                fit: BoxFit.cover,                    
                                ),
                            ),
                          ),
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
                        leading: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              image: DecorationImage(                
                                image: NetworkImage('https://cdn-icons-png.flaticon.com/512/2676/2676004.png'),
                                fit: BoxFit.cover,                    
                                ),
                            ),
                          ),
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
                        leading: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(0),
                              image: DecorationImage(                
                                image: NetworkImage('https://cdn-icons.flaticon.com/png/512/4148/premium/4148460.png?token=exp=1655724757~hmac=4a5e0b9fa2a1023b9c406027a648f692'),
                                fit: BoxFit.cover,                    
                                ),
                            ),
                          ),
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


class secondBody extends StatefulWidget {
  const secondBody({Key? key}) : super(key: key);

  @override
  State<secondBody> createState() => _secondBodyState();
}

class _secondBodyState extends State<secondBody> {
  final _cityTextController = TextEditingController();
  final _dataService = DataService();

  @override
  Widget build(BuildContext context) {

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
              colors: [
                Color(0xFF99CC99),
                Color(0xFFFFCC00),
                Color(0xFF99CCFF),
                
                // Color(0xFF003399),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
                  ),
        ),

      //searchBar
      Positioned(          
        top: 100,
        left: 0,
        right: 0,         
        
        child: Center(
          child: Container(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            decoration: BoxDecoration(
              color: Color.fromARGB(107, 255, 255, 255),
              border: Border.all(
                color: Color.fromARGB(57, 77, 62, 62),                         
              ),
              borderRadius: BorderRadius.all(Radius.circular(10))
            ),              
            // height: 60,
            width: 350,

            child: TextField(
              controller: _cityTextController,
              decoration: InputDecoration(
                labelText: 'enter city name',                
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 30,                  
                  ),
              ),
            ),

          ),
        ),
      ),

      
      //Description temperature cloud place
      Positioned(          
        top: 190,
        left: 0,
        right: 0,         
        
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(107, 255, 255, 255),
              border: Border.all(
                color: Color.fromARGB(57, 77, 62, 62),                         
              ),
              borderRadius: BorderRadius.all(Radius.circular(20))
            ),              
            height: 160,
            width: 350,

            child: Stack(
              clipBehavior: Clip.none,
              children: [
                //Description
                Positioned(
                  top: 20,
                  left: 20,
                  
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(
                        
                      ),
                      
                      child: Text(                          
                        'Description',
                        style: TextStyle(
                          fontSize: 25,
                          color: Color.fromARGB(176, 0, 128, 255),
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                    ),
                  ),
                ),

                //Temperature
                  Positioned(
                  bottom: 20,
                  left: 20,
                  
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(
                        
                      ),
                      
                      child: Text(                          
                        '31',
                        style: TextStyle(
                          fontSize: 70,
                          color: Color.fromARGB(255, 255, 123, 0),
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                    ),
                  ),
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
                        image: NetworkImage('https://openweathermap.org/img/wn/10d@4x.png'),
                        fit: BoxFit.cover,                    
                        ),
                      ),                       
                  ),
                ),

                //City
                Positioned(
                  bottom: 10,
                  right: 20,
                  
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(
                        
                      ),
                      
                      child: Text(                          
                        'place',
                        style: TextStyle(
                          fontSize: 30,
                          color: Color.fromARGB(176, 0, 128, 255),
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                    ),
                  ),
                ),


            ]
            ),
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
              color: Color.fromARGB(107, 255, 255, 255),
              border: Border.all(
                color: Color.fromARGB(57, 77, 62, 62),                         
              ),
              borderRadius: BorderRadius.all(Radius.circular(20))
            ),      
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
                            color: Color.fromARGB(107, 255, 255, 255),
                            border: Border.all(
                              color: Color.fromARGB(107, 255, 255, 255),                         
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                          child: ListTile(
                            leading:Container(
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
                                style: TextStyle(color: Color.fromARGB(189, 5, 168, 5),),
                              'Place',
                              // style: TextStyle(color: Colors.black),
                              ),
                            trailing: Text(
                                style: TextStyle(color: Color.fromARGB(189, 5, 168, 5)),place),
                          ),
                        ),
                            
                        SizedBox(height: 10,),
                        Container(                      
                            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(107, 255, 255, 255),
                            border: Border.all(
                              color: Color.fromARGB(107, 255, 255, 255),                         
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                          child: ListTile(
                            leading: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  image: DecorationImage(                
                                    image: AssetImage('assets/description.png'),
                                    fit: BoxFit.cover,                    
                                    ),
                                ),
                              ),
                            
                            title: Text(
                              style: TextStyle(color: Color.fromARGB(189, 5, 168, 5)),
                              'Description',                          
                              ),
                            trailing: Text(
                              style: TextStyle(color: Color.fromARGB(189, 5, 168, 5)),                          
                              descr),
                          ),
                        ),
                            
                        SizedBox(height: 10,),
                        Container(
                            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(107, 255, 255, 255),
                            border: Border.all(
                              color: Color.fromARGB(107, 255, 255, 255),                         
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                          child: ListTile(
                            leading: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  image: DecorationImage(                
                                    image: AssetImage('assets/temperature.png'),
                                    fit: BoxFit.cover,                    
                                    ),
                                ),
                              ),
                            
                            title: Text(
                                style: TextStyle(color: Color.fromARGB(189, 5, 168, 5)),
                              'Temperature',
                              // style: TextStyle(color: Colors.black),
                              ),
                            trailing: Text(
                                style: TextStyle(color: Color.fromARGB(189, 5, 168, 5)),tempe),
                          ),
                        ),
                            
                        SizedBox(height: 10,),
                        Container(
                            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(107, 255, 255, 255),
                            border: Border.all(
                              color: Color.fromARGB(107, 255, 255, 255),                         
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                          child: ListTile(
                            leading:Container(
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
                                style: TextStyle(color: Color.fromARGB(189, 5, 168, 5)),
                              'Perceived',
                              // style: TextStyle(color: Colors.black),
                              ),
                            trailing: Text(
                                style: TextStyle(color: Color.fromARGB(189, 5, 168, 5)),'52'+'\u00B0'+'C'),
                          ),
                        ),
                            
                        SizedBox(height: 10,),
                        Container(
                            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(107, 255, 255, 255),
                            border: Border.all(
                              color: Color.fromARGB(107, 255, 255, 255),                         
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
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
                                style: TextStyle(color: Color.fromARGB(189, 5, 168, 5)),
                              'Pressure',
                              // style: TextStyle(color: Colors.black),
                              ),
                            trailing: Text(
                                style: TextStyle(color: Color.fromARGB(189, 5, 168, 5)),press),
                          ),
                        ),
                            
                        SizedBox(height: 10,),
                        Container(
                            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(107, 255, 255, 255),
                            border: Border.all(
                              color: Color.fromARGB(107, 255, 255, 255),                         
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
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
                                style: TextStyle(color: Color.fromARGB(189, 5, 168, 5)),
                              'Humidity',
                              // style: TextStyle(color: Colors.black),
                              ),
                            trailing: Text(
                                style: TextStyle(color: Color.fromARGB(189, 5, 168, 5)),hum),
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