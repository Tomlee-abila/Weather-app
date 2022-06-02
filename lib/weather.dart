import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:weather_app/profile.dart';
import 'homepage.dart';


class Weather extends StatefulWidget {
  const Weather({Key? key}) : super(key: key);

  @override
  State<Weather> createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {

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

       return Scaffold(
          appBar: AppBar(
          backgroundColor: Colors.deepPurple[300],
          elevation: 4,
          title: const Center(child: Text('Weather App')),
          actions: [ 
            IconButton( onPressed: () {}, icon: const Icon(Icons.share)),],
          ),

        drawer: Drawer(
            child: Container(
              color: Colors.deepPurple[200],
              child: ListView(
                children: [
                  const DrawerHeader(
                    child: ImageIcon(
                      AssetImage("assets/weather2.png"),
                      // color: Color(0xFF3A5A98), 
                      ),
                  ),
                  

                  ListTile(
                    leading: const Icon(Icons.home),
                    title: const Text(
                      'Home',
                      style: TextStyle(fontSize: 20),
                      ),
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => HomePage()));
                      },
                  ),

                  ListTile(
                    leading: const Icon(Icons.filter_drama),         
                    title: const Text(
                      'Weather',
                      style: TextStyle(fontSize: 20),
                      ),
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Weather()));
                      },
                  ),

                  ListTile(
                    leading: const Icon(Icons.person),
                    title: const Text(
                      'Profile',
                      style: TextStyle(fontSize: 20),
                      ),
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Profile()));
                      },
                  ),
                ],
              ),
            ),
          ),
      
      bottomNavigationBar: GNav(
          selectedIndex: _selectedIndex,
          backgroundColor: Color(0xFF9575CD),
          color: Colors.white,
          gap: 8,
          activeColor: Colors.white,
          tabBackgroundColor: Color.fromARGB(255, 90, 90, 90),
          padding: EdgeInsets.all(16),   
          
          onTabChange: _navigationBottonBar,
          tabs: [
            GButton(icon: Icons.home, text: 'Home',),
            GButton(icon: Icons.filter_drama, text: 'Weather'),
            GButton(icon: Icons.person, text: 'Profile'),
          ]
        ),

      body: Column(
        children: [
          
          Row(
                children: [
                  TextField(
                      decoration: InputDecoration(
                        hintText: 'Email',
                      ),
                    ),

                  Icon(Icons.search, color: Colors.deepPurple,),
                ],
              ),
            SizedBox(height: 30.0,),
          Row(
            children: [
              Text(
                'BIRTHDAY: ',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                ),
              ),
              
              Text(
                '3rd July 1962',
                style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),

    );
  }
    
}
