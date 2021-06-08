import 'package:flutter/material.dart';
import '../widgets/info_card.dart';

// our data
const url = "Waqar zaqa !crypto";
const email = "waqarZaqa111@gmail.com";
const phone = "090078601"; // not real number :)
const location = "karachi, pakistan";

class UserProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('User Profile'),
        ),
        backgroundColor: Colors.white,
        // drawer: Drawer(
        //   // Add a ListView to the drawer. This ensures the user can scroll
        //   // through the options in the drawer if there isn't enough vertical
        //   // space to fit everything.
        //   child: ListView(
        //     // Important: Remove any padding from the ListView.
        //     padding: EdgeInsets.zero,
        //     children: <Widget>[
        //       DrawerHeader(
        //         decoration: BoxDecoration(
        //           color: Colors.blue[600],
        //         ),
        //         child: Column(children: <Widget>[
        //           CircleAvatar(
        //             radius: 30,
        //             backgroundImage: AssetImage('assets/userProfilePic.png'),
        //           ),
        //           Text(
        //             "Waqar Zaqa Crypto ",
        //             style: TextStyle(
        //               fontSize: 18.0,
        //               color: Colors.white,
        //               fontWeight: FontWeight.bold,
        //               fontFamily: "Pacifico",
        //             ),
        //           ),
        //           Text(
        //             "Flutter Developer",
        //             style: TextStyle(
        //                 fontSize: 25,
        //                 color: Colors.blueGrey[800],
        //                 letterSpacing: 2.5,
        //                 fontWeight: FontWeight.bold,
        //                 fontFamily: "Source Sans Pro"),
        //           ),
        //           SizedBox(
        //             height: 20,
        //             width: 200,
        //             child: Divider(
        //               color: Colors.white,
        //             ),
        //           ),
        //         ]),
        //       ),
        //       ListTile(
        //         title: Text('Home'),
        //         onTap: () {
        //           // Update the state of the app
        //           // ...
        //           Navigator.push(context,
        //               MaterialPageRoute(builder: (context) => HomePage()));

        //           // Then close the drawer
        //           //   Navigator.pop(context);
        //         },
        //       ),
        //       ListTile(
        //         title: Text('Login'),
        //         onTap: () {
        //           // Update the state of the app
        //           // ...
        //           // Then close the drawer
        //           Navigator.pop(context);
        //         },
        //       ),
        //       ListTile(
        //         title: Text('User Profile'),
        //         onTap: () {
        //           // Update the state of the app
        //           // ...
        //           Navigator.push(context,
        //               MaterialPageRoute(builder: (context) => UserProfile()));

        //           // Then close the drawer
        //           //     Navigator.pop(context);
        //         },
        //       ),
        //       ListTile(
        //         title: Text('Notifications'),
        //         onTap: () {
        //           // Update the state of the app
        //           // ...
        //           // Then close the drawer
        //           Navigator.pop(context);
        //         },
        //       ),
        //       ListTile(
        //         title: Text('Shopping'),
        //         onTap: () {
        //           // Update the state of the app
        //           // ...
        //           // Then close the drawer
        //           Navigator.pop(context);
        //         },
        //       ),
        //       ListTile(
        //         title: Text('Setting'),
        //         onTap: () {
        //           // Update the state of the app
        //           // ...
        //           // Then close the drawer
        //           Navigator.pop(context);
        //         },
        //       ),
        //       ListTile(
        //         title: Text('Sign Out'),
        //         onTap: () {
        //           // Update the state of the app
        //           // ...
        //           // Then close the drawer
        //           Navigator.pop(context);
        //         },
        //       ),
        //     ],
        //   ),
        // ),
        body: SingleChildScrollView(
          padding: new EdgeInsets.only(top: 18.0),

          // minimum: const EdgeInsets.only(top: 50),
          child: Column(
            children: <Widget>[
              CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('assets/userProfilePic.png'),
              ),
              Text(
                "Waqar Zaqa Crypto ",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Pacifico",
                ),
              ),
              Text(
                "Flutter Developer",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.blueGrey[800],
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Source Sans Pro"),
              ),
              SizedBox(
                height: 20,
                width: 200,
                child: Divider(
                  color: Colors.white,
                ),
              ),

              // we will be creating a new widget name info carrd

              InfoCard(text: phone, icon: Icons.phone),
              InfoCard(text: url, icon: Icons.web),
              InfoCard(
                text: location,
                icon: Icons.location_city,
              ),
              InfoCard(text: email, icon: Icons.email),
            ],
          ),
        ));
  }
}
