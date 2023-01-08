import 'package:final_shebuilds/Screens/Home/Home.dart';
import 'package:final_shebuilds/Screens/Settings/settingui.dart';
import 'package:final_shebuilds/Screens/Welcome/btmBar.dart';
import 'package:final_shebuilds/Screens/Explore/explore.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Post extends StatefulWidget {
  const Post({Key? key}) : super(key: key);

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    List sdf = [
      HomePage(),
      Home(),
      Post(),
      SettingsScreen(),
    ];
    sdf[selectedIndex];
    return Scaffold(

      body: Center(
        child: Text("sandy"),
      ),
      bottomNavigationBar: GNav(
        backgroundColor: Colors.pink.shade200,
        //selectedIndex: selectedIndex ,
        rippleColor: Colors.grey!,
        selectedIndex: selectedIndex,
        onTabChange: (index) {
          setState(() {
            selectedIndex = index;
            print(index);
          });
        },
        hoverColor: Colors.white!,
        gap: 8,
        activeColor: Colors.white,
        iconSize: 24,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        duration: Duration(milliseconds: 400),
        tabBackgroundColor: Colors.pink[100]!,
        color: Colors.white,
        tabs: [
          GButton(
            icon: Icons.home,
            text: '',
            // onPressed: (){

            onPressed: () {
              //selectedIndex = 0;
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => HomePage()));
              //    Navigator.of(context)
              //        .push(CupertinoPageRoute(builder: (context) => Post()));
              // },
            },
          ),
          GButton(
              icon: Icons.search,
              text: '',
              onPressed: () {
                //selectedIndex = 1;
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Home()));
              }),
          GButton(
              icon: Icons.post_add,
              text: '',
              onPressed: () {
                //selectedIndex = 2;
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Post()));
              }),
          GButton(
              icon: Icons.account_circle,
              text: '',
              onPressed: () {
                //selectedIndex = 3;
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SettingsScreen()));
              }),
        ],

      ),
      //bottomNavigationBar: btmBar(),
      // floatingActionButton : FloatingActionButton(
      //   onPressed: () {},
      //   backgroundColor: Colors.blue,
      //   child: Icon(Icons.add),
      // ),
      // bottomNavigationBar: BottomNavigationBar(
        //key: _body(),
        // floatingActionButton : FloatingActionButton(
        //   onPressed: () {},
        //   backgroundColor: Colors.blue,
        //   child: Icon(Icons.add),
        // ), items: [],


    );
  }
}
