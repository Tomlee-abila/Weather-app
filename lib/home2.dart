import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final widht = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Positioned(
          bottom: height / 2.4,
          child: Image.asset(
            'assets/new-york.jpg',
            height: height,
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50,),
                Text(
                  'Hello Siti',
                  style: TextStyle(fontSize: 100),
                ),
              ]
              ),
          ),
        ),
      ],
      );
  }
}
