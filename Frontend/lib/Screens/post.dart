import 'package:final_shebuilds/Screens/Home.dart';
import 'package:final_shebuilds/Screens/Settings/settingui.dart';
import 'package:final_shebuilds/Screens/Welcome/btmBar.dart';
import 'package:final_shebuilds/Screens/explore.dart';
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
    return Scaffold(

      body: Center(
        child: Text("sandy"),
      ),
      bottomNavigationBar: GNav(
        rippleColor: Colors.white!,
        hoverColor: Colors.white!,
        gap: 8,
        activeColor: Colors.white,
        iconSize: 24,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        duration: Duration(milliseconds: 400),
        tabBackgroundColor: Colors.pink[200]!,
        color: Colors.white,
        tabs: [
          GButton(
            icon: Icons.home,
            text: '',
            // onPressed: (){
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> HomePage()));
              //    Navigator.of(context)
              //        .push(CupertinoPageRoute(builder: (context) => Post()));
              // },
            },
          ),
          GButton(
              icon: Icons.search,
              text: '',
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Home()));}
          ),
          GButton(
              icon: Icons.post_add,
              text: '',
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Post()));}
          ),
          GButton(
              icon: Icons.account_circle,
              text: '',
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> SettingsScreen()));}
          ),
        ],
        //selectedIndex: _selectedIndex,
        // onTabChange: (index) {
        //   setState(() {
        //     _selectedIndex = index;
        //   });
        // },
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
