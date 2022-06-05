import 'package:flutter/material.dart';

class Weather extends StatelessWidget {
  const Weather({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(child: Text('Weather'))
      ,      
      //   body: Column(
      //   children: [
          
      //     Row(
      //           children: [
      //             TextField(
      //                 decoration: InputDecoration(
      //                   hintText: 'Email',
      //                 ),
      //               ),

      //             Icon(Icons.search, color: Colors.deepPurple,),
      //           ],
      //         ),
      //       SizedBox(height: 30.0,),
      //     Row(
      //       children: [
      //         Text(
      //           'BIRTHDAY: ',
      //           style: TextStyle(
      //             color: Colors.grey,
      //             letterSpacing: 2.0,
      //             fontSize: 28.0,
      //           ),
      //         ),
              
      //         Text(
      //           '3rd July 1962',
      //           style: TextStyle(
      //             color: Colors.amberAccent[200],
      //             letterSpacing: 2.0,
      //             fontSize: 25.0,
      //             fontWeight: FontWeight.bold,
      //           ),
      //         ),
      //       ],
      //     ),
      //   ],
      // ),

    );
    
  }
}
