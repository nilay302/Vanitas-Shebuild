// import 'package:final_shebuilds/Screens/Settings/settingui.dart';
// import 'package:final_shebuilds/Screens/explore.dart';
// import 'package:final_shebuilds/Screens/post.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:google_nav_bar/google_nav_bar.dart';
//
// class btmBar extends StatelessWidget {
//   const btmBar({
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return GNav(
//       backgroundColor: Colors.black,
//       color: Colors.grey,
//       activeColor: Colors.white,
//       //tabBackgroundColor: Colors.black,
//       gap: 8,
//       padding: EdgeInsets.all(10),
//       tabs: [
//         GButton(icon: Icons.home, text: '', iconSize: 30),
//         GButton(
//           icon: Icons.explore,
//           text: '',
//           iconSize: 30,
//           onPressed: () {
//             Navigator.of(context)
//                 .push(CupertinoPageRoute(builder: (context) => Home()));
//           },
//         ),
//         GButton(
//           icon: Icons.post_add,
//           text: '',
//           iconSize: 30,
//           onPressed: () {
//             Navigator.of(context)
//                 .push(CupertinoPageRoute(builder: (context) => Post()));
//           },
//         ),
//         GButton(
//           icon: Icons.account_circle,
//           text: '',
//           iconSize: 30,
//           onPressed: () {
//             Navigator.of(context).push(CupertinoPageRoute(
//                 builder: (context) => SettingsScreen()));
//           },
//         ),
//       ],
//     );
//   }
// }

import 'package:final_shebuilds/Screens/Home.dart';
import 'package:final_shebuilds/Screens/Settings/settingui.dart';
import 'package:final_shebuilds/Screens/explore.dart';
import 'package:final_shebuilds/Screens/post.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
//import 'package:line_icons/line_icons.dart';

// void main() => runApp(MaterialApp(
//     builder: (context, child) {
//       return Directionality(textDirection: TextDirection.ltr, child: child!);
//     },
//     title: 'GNav',
//     theme: ThemeData(
//       primaryColor: Colors.grey[800],
//     ),
    //home: Example()));

class Example extends StatefulWidget {
  @override
  _ExampleState createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  List sdf = [
    HomePage(),
    Home(),
    Post(),
    SettingsScreen(),
  ];
  // int _selectedIndex = 0;
  // static const TextStyle optionStyle =
  // TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  // List<Widget> _widgetOptions = <Widget>[
  //   HomePage(),
  //   Home(),
  //   Post(),
  //   SettingsScreen(),
  //   // Text(
  //   //   'Home',
  //   //   style: optionStyle,
  //   // ),
  //   // Text(
  //   //   'Likes',
  //   //   style: optionStyle,
  //   // ),
  //   // Text(
  //   //   'Search',
  //   //   style: optionStyle,
  //   // ),
  //   // Text(
  //   //   'Profile',
  //   //   style: optionStyle,
  //   // ),
  //];
  int curr=0;
  void onTap(int index){
    setState(() {
      curr = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: sdf[0],
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   elevation: 20,
      //   //title: const Text('GoogleNavBar'),
      // ),
      // body: Center(
      //   /child: _widgetOptions.elementAt(_selectedIndex),
      // ),
      bottomNavigationBar: Container(

        //onTap: onTap(index)
        decoration: BoxDecoration(
          color: Colors.pink[100],
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            //child:

          ),
        ),
      ),
    );
  }
}