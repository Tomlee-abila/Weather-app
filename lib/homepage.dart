import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:weather_app/profile.dart';
import 'package:weather_app/weather.dart';
import 'package:geolocator/geolocator.dart';

import 'home2.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0;
  String word = 'Home';

  void _navigationBottonBar(int index){
    setState((){
      _selectedIndex = index;
      word = _words[index];
    });
  }

  final List<Widget> _pages = [
    homePage(),
    Weather(),
    Profile(),
    
  ];

  final List<String> _words = [
    'Home',
    'Weather',
    'Profile',
    
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final widht = MediaQuery.of(context).size.height;    
    
    return Scaffold(     
      backgroundColor: Color.fromARGB(231, 255, 255, 255), 
      resizeToAvoidBottomInset : false,
      extendBodyBehindAppBar: true,
      extendBody: true,

      appBar: AppBar(
        backgroundColor: Colors.black45,
        elevation: 0,
        title: Center(child: Text(word)),
        actions: [ 
          IconButton( 
            onPressed: () {}, 
            icon: const CircleAvatar(
              backgroundImage: NetworkImage('https://i.pravatar.cc/300'),
              backgroundColor: Colors.black26,
            )
          )
        ],
        ),

      drawer: Container(
        child: Drawer(
            child: Container(
              color: Colors.transparent,
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
                      _navigationBottonBar(0);
                      // Scaffold.of(context).closeDrawer();
                      },
                  ),
      
                  ListTile(
                    leading: const Icon(Icons.filter_drama),         
                    title: const Text(
                      'Weather',
                      style: TextStyle(fontSize: 20),
                      ),
                      onTap: () {
                        _navigationBottonBar(1);
                        // Scaffold.of(context).closeDrawer();
                      },
                  ),
      
                  ListTile(
                    leading: const Icon(Icons.person),
                    title: const Text(
                      'Profile',
                      style: TextStyle(fontSize: 20),
                      ),
                      onTap: () {
                        _navigationBottonBar(2);
                        
                      },
                  ),
                ],
              ),
            ),
          ),
      ),
    
      bottomNavigationBar: Container(
        decoration: new BoxDecoration(
              color: Color(0xE7382E4E),
              borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(20.0),
                topRight: const Radius.circular(20.0),
              )
            ),
        child: GNav(
          selectedIndex: _selectedIndex,
          backgroundColor: Color.fromARGB(151, 3, 120, 3),
          color: Colors.white,
          gap: 8,
          activeColor: Colors.white,
          tabBackgroundColor: const Color.fromARGB(255, 90, 90, 90),
          padding: const EdgeInsets.all(16),   
          
          onTabChange: _navigationBottonBar,
          tabs: const [
            GButton(icon: Icons.home, text: 'Home',),
            GButton(icon: Icons.filter_drama, text: 'Weather'),
            GButton(icon: Icons.person, text: 'Profile'),
          ]
        ),
      ),

      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: height,
              width: widht,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF0099CC),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            child: _pages[_selectedIndex]
            ),
        ],
      ),
    

);
  }
}
