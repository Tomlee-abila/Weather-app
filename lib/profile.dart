import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return profileBodyTwo();
  }
}

class profileBodyTwo extends StatelessWidget {
  const profileBodyTwo({Key? key}) : super(key: key);

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
                colors: [Color(0xFF115ea4), Color(0xFF115ea4)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
        ),
        //Name
        Positioned(
          top: 150,
          left: 10,
          child: Container(
            width: 330,
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            decoration: BoxDecoration(
                color: Color.fromARGB(87, 255, 255, 255),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: ListTile(
              leading: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0),
                  image: DecorationImage(
                    image: AssetImage('assets/name.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              title: Text(
                style: TextStyle(color: Colors.white),
                'Name',
              ),
              subtitle: Text(
                  style: TextStyle(
                      color: const Color.fromRGBO(255, 255, 255, 1),
                      fontSize: 20),
                  'Tomlee Osbon Otieno'),
            ),
          ),
        ),
        //Birthday
        Positioned(
          top: 250,
          left: 10,
          child: Container(
            width: 330,
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            decoration: BoxDecoration(
                color: Color.fromARGB(87, 255, 255, 255),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: ListTile(
              leading: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0),
                  image: DecorationImage(
                    image: AssetImage('assets/birthday.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              title: Text(
                style: TextStyle(color: Colors.white),
                'Birthday',
              ),
              subtitle: Text(
                  style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1), fontSize: 20),
                  'May 02, 1997'),
            ),
          ),
        ),
        //Phone Number
        Positioned(
          top: 350,
          left: 10,
          child: Container(
            width: 330,
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            decoration: BoxDecoration(
                color: Color.fromARGB(87, 255, 255, 255),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: ListTile(
              leading: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0),
                  image: DecorationImage(
                    image: AssetImage('assets/phone.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              title: Text(
                style: TextStyle(color: Colors.white),
                'Phone Number',
              ),
              subtitle: Text(
                  style: TextStyle(
                      color: const Color.fromRGBO(255, 255, 255, 1),
                      fontSize: 20),
                  '+254700565647'),
            ),
          ),
        ),
        //email
        Positioned(
          top: 450,
          left: 10,
          child: Container(
            width: 330,
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            decoration: BoxDecoration(
                color: Color.fromARGB(87, 255, 255, 255),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: ListTile(
              leading: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0),
                  image: DecorationImage(
                    image: AssetImage('assets/email.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              title: Text(
                style: TextStyle(color: Colors.white),
                'Email',
              ),
              subtitle: Text(
                  style: TextStyle(
                      color: const Color.fromRGBO(255, 255, 255, 1),
                      fontSize: 20),
                  'tomleeabila@gmail.com'),
            ),
          ),
        ),
      ],
    );
  }
}

class profileBodyOne extends StatefulWidget {
  const profileBodyOne({Key? key}) : super(key: key);

  @override
  State<profileBodyOne> createState() => _profileBodyOneState();
}

class _profileBodyOneState extends State<profileBodyOne> {
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
            SizedBox(
              height: 40.0,
            ),

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

            SizedBox(
              height: 80.0,
            ),

            Container(
              decoration: BoxDecoration(
                  color: Color(0xE7382E4E),
                  border: Border.all(
                    color: Color(0x844D3E3E),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(60))),
              child: const ListTile(
                title: Text(
                  style: TextStyle(color: Colors.white),
                  'Name',
                  // style: TextStyle(color: Colors.black),
                ),
                subtitle: Text(style: TextStyle(color: Colors.white), 'Kevin'),
              ),
            ),

            SizedBox(height: 10.0),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xE7382E4E),
                  border: Border.all(
                    color: Color(0x844D3E3E),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(60))),
              child: const ListTile(
                title: Text(
                  style: TextStyle(color: Colors.white),
                  'Birthday',
                  // style: TextStyle(color: Colors.black),
                ),
                subtitle: Text(
                    style: TextStyle(color: Colors.white), '12th May 1994'),
              ),
            ),

            SizedBox(
              height: 260.0,
            ),
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
