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
    var inputBorder = OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.all(
                          Radius.circular(30.0),
                        ),
                      );
    return Stack(
      children: [
        Positioned(
          bottom: height / 2.4,
          child: Image.asset(
            'assets/new-york.jpg',
            height: height,
            fit: BoxFit.fill,
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
            child: DefaultTextStyle(
              style: TextStyle(color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 100,),
                  Text(
                    'Hello',
                    style: TextStyle(fontSize: 30),
                  ),
                  Text(
                    'Check the weather by the city',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
                  ),

                  SizedBox(height: 35),
                  TextField(
                    decoration: InputDecoration(
                      border: inputBorder,
                      enabledBorder: inputBorder,
                      focusedBorder: inputBorder,
                      hintText: 'Search city',
                      hintStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w600
                      ),
                      suffixIcon: Icon(Icons.search, color: Colors.white,)

                    ),
                  ),
                ]
                ),
            ),
          ),
        ),
      ],
      );
  }
}
