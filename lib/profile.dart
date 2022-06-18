import 'package:flutter/material.dart';


class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {


  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        // appBar: AppBar(
        //     backgroundColor: Colors.deepPurple[300],
        //     elevation: 4,
        //     title: const Center(child: Text('Weather App')),
        //     actions: [ 
        //       IconButton( onPressed: () {}, icon: const Icon(Icons.share)),],
        //     ),
    
        body: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40.0,),
            
            const Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage('https://i.pravatar.cc/300'),
                radius: 40.0,
              ),
            ),

     //divider             
            Divider(
              height: 20.0,
              color: Colors.grey[800],
            ),

            SizedBox(height: 80.0,),

            Container(
                  decoration: BoxDecoration(
                    color: Color(0xE7382E4E),
                    border: Border.all(
                      color: Color(0x844D3E3E),                         
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(60))
                  ),
                  child: const ListTile(
                    
                    title: Text(
                        style: TextStyle(color: Colors.white),
                      'Name',
                      // style: TextStyle(color: Colors.black),
                      ),
                    subtitle: Text(
                        style: TextStyle(color: Colors.white),'Kevin'),
                  ),
                ),
          
            SizedBox(height: 10.0),
            Container(
                  decoration: BoxDecoration(
                    color: Color(0xE7382E4E),
                    border: Border.all(
                      color: Color(0x844D3E3E),                         
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(60))
                  ),
                  child: const ListTile(
                    
                    title: Text(
                        style: TextStyle(color: Colors.white),
                      'Birthday',
                      // style: TextStyle(color: Colors.black),
                      ),
                    subtitle: Text(
                        style: TextStyle(color: Colors.white),'12th May 1994'),
                  ),
                ),
          
            
           SizedBox(height: 260.0,),
    //name    
    //         SizedBox(height: 30.0,),          
    //         Row(
    //           children: [
    //             Text(
    //               'NAME: ',
    //               style: TextStyle(
    //                 color: Colors.black,
                    
    //                 fontSize: 25.0,
    //               ),
    //             ),
                
    //             Text(
    //               'Tom Cruise',
    //               style: TextStyle(
    //                 color: Colors.blue,
    //                 letterSpacing: 2.0,
    //                 fontSize: 25.0,
    //                 fontWeight: FontWeight.bold,
    //               ),
    //             ),
    //           ],
    //         ),
    
    // //Birthday
    //         const SizedBox(height: 30.0,),
    //         Row(
    //           children: [
    //             Text(
    //               'BIRTHDAY: ',
    //               style: TextStyle(
    //                 color: Colors.black,
                    
    //                 fontSize: 25.0,
    //               ),
    //             ),
                
    //             Text(
    //               '3rd July 1962',
    //               style: TextStyle(
    //                 color: Colors.blue,
    //                 letterSpacing: 2.0,
    //                 fontSize: 25.0,
    //                 fontWeight: FontWeight.bold,
    //               ),
    //             ),
    //           ],
    //         ),

          
            
    //         SizedBox(height: 240.0),          
    
    
    //         Divider(
    //           height: 10.0,
    //           color: Colors.grey[800],
    //         ),
    
    //Version          
            Text(
              '@ version 1.0.2',
              style: TextStyle(
                color: Colors.grey[400],
                fontSize: 18.0,
                letterSpacing: 1.0,
              ),
            )
          ],
        ),
    
      ),
    );
    
  }
}