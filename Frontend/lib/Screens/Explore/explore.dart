// import 'package:final_shebuilds/Screens/Home.dart';
// import 'package:flutter/material.dart';
//
// class Explore extends StatelessWidget {
//   const Explore({Key? key, required Scaffold home}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Explore(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Explore"),
//         ),
//       ),
//     );
//   }
// }
//
// class Explore2 extends StatefulWidget {
//   const Explore2({Key? key}) : super(key: key);
//
//   @override
//   State<Explore2> createState() => _Explore2State();
// }
//
// class _Explore2State extends State<Explore2> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Grid"),
//       ),
//       body: Container(
//         child: Padding(
//           padding: const EdgeInsets.all(10.0),
//           child: GridView(
//             children: [
//               InkWell(
//                 onTap: () {
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: (context) => HomePage()));
//                 },
//                 child: Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(20),
//                     color: Colors.red,
//                   ),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Icon(
//                         Icons.home,
//                         size: 50,
//                         color: Colors.white,
//                       ),
//                       Text(
//                         "Home",
//                         style: TextStyle(color: Colors.white, fontSize: 30),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//               InkWell(
//                 onTap: () {
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: (context) => HomePage()));
//                 },
//                 child: Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(20),
//                     color: Colors.yellow,
//                   ),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Icon(
//                         Icons.search,
//                         size: 50,
//                         color: Colors.white,
//                       ),
//                       Text(
//                         "Search",
//                         style: TextStyle(color: Colors.white, fontSize: 30),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//               InkWell(
//                 onTap: () {
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: (context) => HomePage()));
//                 },
//                 child: Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(20),
//                     color: Colors.green,
//                   ),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Icon(
//                         Icons.settings,
//                         size: 50,
//                         color: Colors.white,
//                       ),
//                       Text(
//                         "Settings",
//                         style: TextStyle(color: Colors.white, fontSize: 30),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//               InkWell(
//                 onTap: () {
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: (context) => HomePage()));
//                 },
//                 child: Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(20),
//                     color: Colors.grey,
//                   ),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Icon(
//                         Icons.book,
//                         size: 50,
//                         color: Colors.white,
//                       ),
//                       Text(
//                         "Books",
//                         style: TextStyle(color: Colors.white, fontSize: 30),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'dart:async';
import 'package:final_shebuilds/Screens/Welcome/btmBar.dart';
import 'package:final_shebuilds/Screens/Explore/explore.dart';
import 'package:final_shebuilds/Screens/Home/Home.dart';
import 'package:final_shebuilds/Screens/Settings/settingui.dart';
import 'package:final_shebuilds/Screens/post.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../cards/delay.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   // This widget is the root of your application.
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       //title: 'Flutter Demo',
//       theme: ThemeData(
//         cardColor: Color(0xFFF48FB1), //ok
//       ),
//       //home: const Home(),
//     );
//   }
// }

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final PageController pageController= PageController();
  ScrollController _scrollController = ScrollController();
  final List<Map<String, dynamic>> gridfMap = [
    {
      "title": "Menstrual Cups",
      "images":
          "/mcup1.jpg",
          // "https://thumbs.dreamstime.com/z/menstrual-cup-vector-pink-illustration-isolated-white-menstrual-cup-vector-pink-woman-illustration-isolated-white-129060709.jpg",
    },
    {
      "title": "Tampons",
      "image":
          // "assets/icons/tam (1).png"
          "https://png.pngtree.com/png-clipart/20210129/ourmid/pngtree-simulation-sanitary-napkin-png-image_2831293.jpg",
    },
    {
      "title": "Pads",
      "image":
          "https://thumbs.dreamstime.com/b/menstruation-period-menses-used-dirty-menstrual-pad-sanitary-napkin-stained-blood-vector-illustration-192564484.jpg",
          // "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",
    },
  ];
  int pageNo = 0;
  Timer? carasouelTmer;
  Timer getTimer() {
    return Timer.periodic(const Duration(seconds: 3), (timer) {
      if (pageNo == 4) {
        pageNo = 0;
      }
      pageController.animateToPage(
        pageNo,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOutCirc,
      );
      pageNo++;
    });
  }
  @override
  // void initState() {
  //   pageController = PageController(initialPage: 0, viewportFraction: 0.85);
  //   carasouelTmer = getTimer();
  //   _scrollController.addListener(() {
  //     if (_scrollController.position.userScrollDirection ==
  //         ScrollDirection.reverse) {
  //       showBtmAppBr = false;
  //       setState(() {});
  //     } else {
  //       showBtmAppBr = true;
  //       setState(() {});
  //     }
  //   });
  //   super.initState();
  // }
  //
  // @override
  // void dispose() {
  //   pageController.dispose();
  //   super.dispose();
  // }

  // bool showBtmAppBr = true
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    List sdf = [
      HomePage(),
      Home(),
      Post(),
      SettingsScreen(),
    ];
    sdf[selectedIndex];
    return Container(
      height: 10,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.redAccent),
        borderRadius: BorderRadius.circular(
          16.0,
        ),
        color: Colors.red.shade100,
      ),
      child: Scaffold(
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
        //bottomNavigationBar: Example(),
        //bottomNavigationBar: btmBar(),
        body: SafeArea(
          child: SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              children: [
                const SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: ListTile(
                    // onTap: () {
                    //   Navigator.push((context),
                    //       MaterialPageRoute(builder: (context) => (HomePage())));
                    // },
                    selected: true,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(16.0),
                      ),
                    ),
                    selectedTileColor: Colors.red.shade100,
                    title: Text(
                      "Welcome Back",
                      style: Theme.of(context).textTheme.subtitle1!.merge(
                            const TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 18.0,
                            ),
                          ),
                    ),
                    subtitle: Text(
                      "A Very Warm Welcome!.",
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                    // trailing: PopUpMen(
                    //   menuList: const [
                    //     PopupMenuItem(
                    //       child: ListTile(
                    //         leading: Icon(
                    //           CupertinoIcons.person,
                    //         ),
                    //         title: Text("My Profile"),
                    //       ),
                    //     ),
                    //     PopupMenuItem(
                    //       child: ListTile(
                    //         leading: Icon(
                    //           CupertinoIcons.bag,
                    //         ),
                    //         title: Text("My Bag"),
                    //       ),
                    //     ),
                    //     PopupMenuDivider(),
                    //     PopupMenuItem(
                    //       child: Text("Settings"),
                    //     ),
                    //     PopupMenuItem(
                    //       child: Text("About Us"),
                    //     ),
                    //     PopupMenuDivider(),
                    //     PopupMenuItem(
                    //       child: ListTile(
                    //         leading: Icon(
                    //           Icons.logout,
                    //         ),
                    //         title: Text("Log Out"),
                    //       ),
                    //     ),
                    //   ],
                    //   icon: CircleAvatar(
                    //     backgroundImage: const NetworkImage(
                    //       'https://images.unsplash.com/photo-1644982647869-e1337f992828?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80',
                    //     ),
                    //     child: Container(),
                    //   ),
                    // ),
                  ),
                ),
                SizedBox(
                  height: 250,
                  child: PageView.builder(
                    controller: pageController,
                    onPageChanged: (index) {
                      pageNo = index;
                      setState(() {});
                    },
                    itemBuilder: (_, index) {
                      return AnimatedBuilder(
                        animation: pageController,
                        builder: (ctx, child) {
                          return child!;
                        },
                        child: GestureDetector(
                          // onTap: () {
                          //   ScaffoldMessenger.of(context).showSnackBar(
                          //     SnackBar(
                          //       content:
                          //       Text("Hello you tapped at ${index + 1} "),
                          //     ),
                          //   );
                          // },
                          onPanDown: (d) {
                            carasouelTmer?.cancel();
                            carasouelTmer = null;
                          },
                          onPanCancel: () {
                            carasouelTmer = getTimer();
                          },
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.redAccent),
                              borderRadius: BorderRadius.circular(
                                16.0,
                              ),
                              color: Colors.red.shade100,
                            ),
                            child: Padding(

                              padding: const EdgeInsets.only(bottom: 40.0),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                              ClipRRect(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(16.0),
                              topRight: Radius.circular(16.0),
                            ),
                            child: Image.network(
                              "${gridfMap.elementAt(index)['images']}",
                              height: 150,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                        ),
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(
                                    child: Text(

                                      "${gridfMap.elementAt(index)['title']}",
                                      style: Theme.of(context).textTheme.subtitle1!.merge(
                                        const TextStyle(

                                          //fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                // const SizedBox(
                                //   height: 5.0,
                                // ),
                                // // Text(
                                // //   "${gridMap.elementAt(index)['price']}",
                                // //   style: Theme.of(context).textTheme.subtitle2!.merge(
                                // //     TextStyle(
                                // //       fontWeight: FontWeight.w700,
                                // //       color: Colors.grey.shade500,
                                // //     ),
                                // //   ),
                                // // ),
                                // const SizedBox(
                                //   height: 8.0,
                                // ),
                                // Row(
                                //   children: [
                                //     IconButton(
                                //       onPressed: () {},
                                //       icon: Icon(
                                //         CupertinoIcons.heart,
                                //       ),
                                //     ),
                                //     IconButton(
                                //       onPressed: () {},
                                //       icon: Icon(
                                //         CupertinoIcons.cart,
                                //       ),
                                //     ),
                                //   ],
                                // ),
                              ],
                            ),
                              // child: Container(
                              //
                              //   child: Image.network(
                              //     "${gridfMap.elementAt(index)['images']}",
                              //     height: 200,
                              //     width: double.infinity,
                              //     fit: BoxFit.cover,
                              //   ),
                              //   margin: const EdgeInsets.only(
                              //       right: 8, left: 8, top: 24, bottom: 12),
                              //   decoration: BoxDecoration(
                              //     border: Border.all(color: Colors.black),
                              //     borderRadius: BorderRadius.circular(20.0),
                              //     color: Colors.pink.shade200,
                              //   ),
                              // ),
                            ),
                        ]
                        ),
                      ),
                          )
                        )
                      );
                    },
                    itemCount: gridfMap.length,
                  ),
                ),
                const SizedBox(
                  height: 12.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    4,
                    (index) => GestureDetector(
                      child: Container(
                        margin: const EdgeInsets.all(2.0),
                        child: Icon(
                          Icons.circle,
                          size: 12.0,
                          color: pageNo == index
                              ? Colors.indigoAccent
                              : Colors.grey.shade300,
                        ),
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(24.0),
                  child: GridB(),
                ),
              ],
            ),
          ),
        ),
        // bottomNavigationBar: Container(
        // color: Colors.black,
        // child: Padding(
        // padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
        // child: GNav(
        // backgroundColor: Colors.black,
        // color: Colors.grey,
        // activeColor: Colors.white,
        // //tabBackgroundColor: Colors.black,
        // gap: 8,
        // padding: EdgeInsets.all(10),
        // tabs: [
        // GButton(icon: Icons.home, text: '', iconSize: 30),
        // GButton(
        // icon: Icons.explore,
        // text: '',
        // iconSize: 30,
        // onPressed: () {
        // Navigator.of(context)
        //     .push(CupertinoPageRoute(builder: (context) => Home()));
        // },
        // ),
        // GButton(
        // icon: Icons.post_add,
        // text: '',
        // iconSize: 30,
        // onPressed: () {
        // Navigator.of(context)
        //     .push(CupertinoPageRoute(builder: (context) => Post()));
        // },
        // ),
        // GButton(
        // icon: Icons.account_circle,
        // text: '',
        // iconSize: 30,
        // onPressed: () {
        // Navigator.of(context).push(CupertinoPageRoute(
        // builder: (context) => SettingsScreen()));
        // },
        // ),
        // ],
        // ),
        // floatingActionButtonLocation: showBtmAppBr
        //     ? FloatingActionButtonLocation.centerDocked
        //     : FloatingActionButtonLocation.centerFloat,
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {},
        //   child: const Icon(
        //     Icons.add,
        //   ),
        // ),
        // bottomNavigationBar: AnimatedContainer(
        //   child: BottomAppBar(
        //     notchMargin: 8.0,
        //     shape: const CircularNotchedRectangle(),
        //     child: Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //       children: [
        //         IconButton(
        //           onPressed: () {},
        //           icon: const Icon(
        //             Icons.home_outlined,
        //           ),
        //         ),
        //         IconButton(
        //           onPressed: () {},
        //           icon: const Icon(
        //             CupertinoIcons.heart,
        //           ),
        //         ),
        //         const SizedBox(
        //           width: 50,
        //         ),
        //         IconButton(
        //           onPressed: () {},
        //           icon: const Icon(
        //             CupertinoIcons.cart,
        //           ),
        //         ),
        //         IconButton(
        //           onPressed: () {},
        //           icon: const Icon(
        //             CupertinoIcons.bell,
        //           ),
        //         ),
        //       ],
        //     ),
        //   ),
        //     duration: const Duration(
        //       milliseconds: 800,
        //     ),
        //     curve: Curves.easeInOutSine,
        //     height: showBtmAppBr ? 70 : 0,
      ),
    );
  }
}

class PopUpMen extends StatelessWidget {
  final List<PopupMenuEntry> menuList;
  final Widget? icon;
  const PopUpMen({Key? key, required this.menuList, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      itemBuilder: ((context) => menuList),
      icon: icon,
    );
  }
}

// class FabExt extends StatelessWidget {
//   const FabExt({
//     Key? key,
//     required this.showFabTitle,
//   }) : super(key: key);
//
//   final bool showFabTitle;
//
//   @override
//   Widget build(BuildContext context) {
//     return FloatingActionButton.extended(
//       onPressed: () {},
//       label: AnimatedContainer(
//         duration: const Duration(seconds: 2),
//         padding: const EdgeInsets.all(12.0),
//         child: Row(
//           children: [
//             const Icon(CupertinoIcons.cart),
//             SizedBox(width: showFabTitle ? 12.0 : 0),
//             AnimatedContainer(
//               duration: const Duration(seconds: 2),
//               child: showFabTitle ? const Text("Go to cart") : const SizedBox(),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

class GridB extends StatefulWidget {
  const GridB({Key? key}) : super(key: key);

  @override
  State<GridB> createState() => _GridBState();
}

class _GridBState extends State<GridB> {
  final List<Map<String, dynamic>> gridMap = [
    {
      "title": "Track Menstrual Cycle",
      // "onTap":
      //"price": "\$255",
      "route": "delay()",
      "images":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStDZQHryQ6WOCLwnNPA5N9piVoLYrI2Sknvw&usqp=CAU",
      //"https://images.unsplash.com/photo-1600185365926-3a2ce3cdb9eb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=725&q=80",
    },
    {
      "title": "Track Pregnancy",
      // //"price": "\$245",
      "route": "delay()",
      "images":
          "https://static.vecteezy.com/system/resources/previews/006/631/151/original/cute-cartoon-pregnant-woman-in-pants-and-t-shirt-listens-to-music-with-headphones-holds-green-apple-in-her-hand-illustration-in-flat-style-vector.jpg",
      // "https://images.unsplash.com/photo-1541099649105-f69ad21f3246?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
    },
    {
      "title": "Delay In Menstrual Cycle?",
      // //"price": "\$155",
      "route": "delay()",
      "images":
          "https://static.vecteezy.com/system/resources/previews/002/503/060/original/flat-simple-wall-calendar-design-style-cartoon-illustration-drawing-vector.jpg",
      // "https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8c2hvZXN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
    },
    {
      "title": "Menstrual Cycle Related Problems",
      //"price": "\$275",
      "route": "delay()",
      "images":
          "https://media.istockphoto.com/id/1400657940/vector/unwell-woman-suffer-from-painful-periods.jpg?s=612x612&w=0&k=20&c=vrDCwLpTjtAlUtGuNTNkcH_UJVVCRhf__z38Hsoou_Y=",
      // "https://images.unsplash.com/photo-1595950653106-6c9ebd614d3a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
    },
    {
      "title": "Pregnancy Related Problems",
      //"price": "\$25",
      "route": "delay()",
      "images":
          "https://media.istockphoto.com/id/1361721572/vector/pregnant-woman-011.jpg?s=612x612&w=0&k=20&c=wvkK0yTOb43-d_Qo6Kxr79sxBzOet6gKhMyima4XGDA=",
      // "https://images.unsplash.com/photo-1583743814966-8936f5b7be1a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
    },
    {
      "title": "What Affects Menstrual Cycle?",
      //"price": "\$27",
      "route": "delay()",
      "images":
          "https://static.vecteezy.com/system/resources/previews/014/581/733/original/mental-health-problem-concept-young-woman-surrounded-by-fears-negative-emotions-and-bad-thoughts-holds-her-head-psychological-disorder-or-illness-cartoon-contemporary-flat-illustration-vector.jpg",
      // "https://images.unsplash.com/photo-1602293589930-45aad59ba3ab?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
    },
    {
      "title": "What Are The Solutions?",
      //"price": "\$55",
      "route": "delay()",
      "images":
          "https://us.123rf.com/450wm/4eka/4eka1903/4eka190300017/4eka190300017.jpg?ver=6",
      // "https://images.unsplash.com/photo-1554568218-0f1715e72254?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12.0,
        mainAxisSpacing: 12.0,
        mainAxisExtent: 280,
      ),
      itemCount: gridMap.length,
      itemBuilder: (_, index) {
        return Container(
          height: 10,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.redAccent),
            borderRadius: BorderRadius.circular(
              16.0,
            ),
            color: Colors.red.shade100,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                  topRight: Radius.circular(16.0),
                ),
                child: Image.network(
                  "${gridMap.elementAt(index)['images']}",
                  height: 200,
                  
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: (){
                    print(index);
                    if(index==0){
                      // print(index);
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => delay()));

                    }
                    if(index==1){
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => delay()));

                    }
                    if(index==2){
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => delay()));

                    }if(index==3){
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => delay()));

                    }if(index==4){
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => delay()));

                    }if(index==5){
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => delay()));

                    }if(index==6){
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => delay()));

                    }
                    // Navigator.of(context).push(MaterialPageRoute(
                    //     builder: (context) => ${gridMap.elementAt(index)['route']}));
                    // //Navigator.push(context, route)
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "${gridMap.elementAt(index)['title']}",
                          style: Theme.of(context).textTheme.subtitle1!.merge(
                                const TextStyle(

                                  //fontWeight: FontWeight.w700,
                                ),
                              ),
                        ),
                      ),
                      // const SizedBox(
                      //   height: 5.0,
                      // ),
                      // // Text(
                      // //   "${gridMap.elementAt(index)['price']}",
                      // //   style: Theme.of(context).textTheme.subtitle2!.merge(
                      // //     TextStyle(
                      // //       fontWeight: FontWeight.w700,
                      // //       color: Colors.grey.shade500,
                      // //     ),
                      // //   ),
                      // // ),
                      // const SizedBox(
                      //   height: 8.0,
                      // ),
                      // Row(
                      //   children: [
                      //     IconButton(
                      //       onPressed: () {},
                      //       icon: Icon(
                      //         CupertinoIcons.heart,
                      //       ),
                      //     ),
                      //     IconButton(
                      //       onPressed: () {},
                      //       icon: Icon(
                      //         CupertinoIcons.cart,
                      //       ),
                      //     ),
                      //   ],
                      // ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
