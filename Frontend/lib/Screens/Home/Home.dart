import 'package:final_shebuilds/Screens/Home/Home.dart';
import 'package:final_shebuilds/Screens/Settings/settingui.dart';
//import 'package:final_shebuilds/Screens/circular_widget.dart';
import 'package:final_shebuilds/Screens/Explore/explore.dart';
import 'package:final_shebuilds/Screens/Home/home_cont.dart';
import 'package:final_shebuilds/Screens/Home/home_edit.dart';
import 'package:final_shebuilds/Screens/post.dart';
import 'package:final_shebuilds/Screens/Home/progresscheck.dart';
import 'package:final_shebuilds/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:final_shebuilds/Screens/Welcome/btmBar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final cycpro = 10;
  DateTime today = DateTime.now();
  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      //cycpro = updt heree
      today = day;
    });
  }

  DateTime date = DateTime.now();
  void showCalendar() {
    showDatePicker(
            context: (context),
            initialDate: DateTime.now(),
            firstDate: DateTime(1800),
            lastDate: DateTime(2055))
        .then((value) {
      setState(() {
        date = value!;
      });
    });
    //build(context)
  }

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
    return Expanded(
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
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => SettingsScreen()));
                }),
          ],
        ),
        // appBar: AppBar(
        //   title: Text("Hi, Beautiful!"),
        //   backgroundColor: Colors.deepPurpleAccent,
        //
        // ),
        body: SingleChildScrollView(
          child: SafeArea(
              child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [

                // Row(
                //   row(
                // )
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        //row(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 4.0, top: 10, bottom: 16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Hi',
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.pink[100]),
                                  ),
                                  Text('Beautiful!',
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.pink[100]))

                                ],

                              ),

                            ),

                            GestureDetector(
                              // onTap: () async {
                              //   await FirebaseAuth.instance.signOut();
                              //   Navigator.of(context).pushAndRemoveUntil(
                              //       MaterialPageRoute(
                              //           builder: (context) => Landing()),
                              //       (Route<dynamic> route) => false);
                              // },
                              onTap: (){
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(builder: (context) => ProfileScreen()),
                                // );
                              },
                              child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      //borderRadius: BorderRadius.circular(12),
                                    ),
                                    padding: EdgeInsets.only(left: 180, bottom: 30),
                                    child: Icon(
                                      Icons.notifications,
                                      color: Colors.pink[300],
                                    ),
                                  ),
                            )
                          ],
                        )
                      ],
                    ),
                    Column(
                      children: [
                        // Container(
                        //     decoration: BoxDecoration(
                        //       color: Colors.white,
                        //       //borderRadius: BorderRadius.circular(12),
                        //     ),
                        //     //padding: EdgeInsets.only(bottom: 300),
                        //     child: Icon(
                        //       Icons.notifications,
                        //       color: Colors.pink[300],
                        //     ),
                        //   )
                      ],
                    ),
                    //row(),
                    // GestureDetector(
                    //   onTap: () {
                    //     // showDialog(
                    //     //   context: context,
                    //     //   builder: (context) => CalendarScreen(),
                    //     //   barrierDismissible: false,
                    //     // );
                    //     // setState(() {
                    //     //   //showCalendar();
                    //     //   CalendarScreen();
                    //     //
                    //     // });
                    //   },
                    //   //child: row(),
                    // ),
                    // proChe(),
                    //CircularWidget(),
                    // Container(
                    //   decoration: BoxDecoration(
                    //     color: Colors.white,
                    //     borderRadius: BorderRadius.circular(12),
                    //   ),
                    //   padding: EdgeInsets.only(bottom: 300),
                    //   child: Icon(
                    //     Icons.notifications,
                    //     color: Colors.pink[300],
                    //   ),
                    // )
                  ],
                ),
                SizedBox(height: 30,),
                Padding(
                  padding: EdgeInsets.only(bottom: 18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Positioned(
                        top: 0,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Text("Days to go!", style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),),
                            CircularPercentIndicator(
                              //
                              animation: true,
                              animationDuration: 10000,
                              radius: 270,
                              lineWidth: 15,
                              percent: cycpro/100,
                              progressColor: Colors.pink[200],
                              backgroundColor: Colors.pink.shade100,
                              circularStrokeCap: CircularStrokeCap.round,
                            ),
                          ]
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                  width: 50,
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(border: Border.all(color: Colors.pink.shade100, width: 2),borderRadius:BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 10,
                                      width: 10,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(50),
                                          color: Colors.purpleAccent[100]),
                                    ),
                                    Text(
                                      '  Menstruation               ',
                                      style: TextStyle(
                                        color: Colors.pink[200],
                                        fontSize: 15,
                                        //fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 10,
                                      width: 10,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(50),
                                          color: Colors.orange[100]),
                                    ),
                                    Text(
                                      '  Ovulation',
                                      style: TextStyle(
                                        color: Colors.pink[200],
                                        fontSize: 15,
                                        //fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                //CalendarScreen(),
                              ],
                            ),
                            //proChe(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 10,
                                      width: 10,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(50),
                                          color: Colors.green[100]),
                                    ),
                                    Text(
                                      '  The follicular phase',
                                      style: TextStyle(
                                        color: Colors.pink[200],
                                        fontSize: 15,
                                        //fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 10,
                                      width: 10,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(50),
                                          color: Colors.blue[100]),
                                    ),
                                    Text(

                                      '  The luteal phase',
                                      style: TextStyle(
                                        color: Colors.pink[200],
                                        fontSize: 15,
                                        //fontWeight: FontWeight.bold,
                                      ),
                                    ),

                        // Container(
                        //   height: 20,
                        //   width: 20,
                        //   decoration: BoxDecoration(
                        //       borderRadius: BorderRadius.circular(100),
                        //       color: Colors.blue),
                        // ),

                                  ],
                                ),
                                //CalendarScreen(),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                  width: 50,
                ),

                Row(
                  children: [
                    SizedBox(
                      height: 60,
                      width: 320,
                      child: InkWell(
                        child: Container(
                          //Decoration? decoration,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                                style: TextStyle(
                                  color: Colors.white,
                                  //fontSize: 15,
                                  //fontWeight: FontWeight.bold,
                                ),
                                "Already done with the cycle? Change your Dates for further Tracking! Click Here."),
                          ),

                          decoration: BoxDecoration(
                            color: Colors.pink[100],
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        //onTap: Navigator.push(context, MaterialPageRoute(builder: (context)=>EditProfileUI()));}
                      ),
                    ),
                  ],
                )
                //proChe(),
              ],
            ),
          )),
        ),
        //MyApp(),

        // bottomNavigationBar: btmBar(),
      ),
    );
  }
}

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({Key? key}) : super(key: key);

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: const Text("Calendar Example"),
      // ),
      body: Expanded(
        child: TableCalendar(
          firstDay: DateTime(2022),
          lastDay: DateTime(2023),
          focusedDay: _focusedDay,
          calendarFormat: _calendarFormat,
          startingDayOfWeek: StartingDayOfWeek.monday,
          rowHeight: 60,
          daysOfWeekHeight: 60,
          headerStyle: HeaderStyle(
            titleTextStyle: const TextStyle(
                color: Colors.teal, fontWeight: FontWeight.bold),
            formatButtonTextStyle: const TextStyle(color: Colors.green),
            formatButtonDecoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.teal, width: 2),
            ),
            leftChevronIcon: const Icon(
              Icons.arrow_back,
              color: Colors.teal,
              size: 28,
            ),
            rightChevronIcon: const Icon(
              Icons.arrow_forward,
              color: Colors.teal,
              size: 28,
            ),
          ),
          daysOfWeekStyle: const DaysOfWeekStyle(
            weekendStyle: TextStyle(color: Colors.red),
          ),
          calendarStyle: const CalendarStyle(
            weekendTextStyle: TextStyle(color: Colors.red),
            todayDecoration: BoxDecoration(
              color: Colors.amber,
              shape: BoxShape.circle,
            ),
            selectedDecoration: BoxDecoration(
              color: Colors.teal,
              shape: BoxShape.circle,
            ),
          ),
          onDaySelected: (selectedDay, focusedDay) {
            if (!isSameDay(_selectedDay, selectedDay)) {
              // Call `setState()` when updating the selected day
              setState(() {
                _selectedDay = selectedDay;
                _focusedDay = focusedDay;
              });
            }
          },
          selectedDayPredicate: (day) {
            return isSameDay(_selectedDay, day);
          },
          onFormatChanged: (format) {
            if (_calendarFormat != format) {
              // Call `setState()` when updating calendar format
              setState(() {
                _calendarFormat = format;
              });
            }
          },
          onPageChanged: (focusedDay) {
            // No need to call `setState()` here
            _focusedDay = focusedDay;
          },
        ),
      ),
    );
  }
}

class row extends StatelessWidget {
  const row({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 280),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hi,',
                    style: TextStyle(
                      color: Colors.pink[200],
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Beautiful!',
                    style: TextStyle(
                      color: Colors.pink[200],
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  //Expanded(child: CalendarScreen()),

                  //
                  // hCon(),
                  // hoEDi(),
                ],
              ),
            ),
            //proChe(),
            Padding(
              padding: EdgeInsets.only(bottom: 250.0, left: 10),
              child: Icon(Icons.arrow_drop_down_circle_outlined),
            ),
          ],
        ),
        //SizedBox(height: 60,),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     //SizedBox(width: 100),
        //     CircularPercentIndicator(
        //
        //       animation: true,
        //       animationDuration: 10000,
        //       radius: 180,
        //       lineWidth: 15,
        //       percent: 0.8,
        //       progressColor: Colors.pink[200],
        //       backgroundColor: Colors.pink.shade100,
        //       circularStrokeCap: CircularStrokeCap.round,
        //     ),
        //   ],
        // ),
        // proChe(),
        // hCon(),
        // hoEDi(),
      ],
    );
  }
}

// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   DateTime today = DateTime.now();
//   void _onDaySelected(DateTime day, DateTime focusedDay){
//     setState(() {
//       today = day;
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//     );
//   }
//   Widget content(){
//     return Padding(
//       padding: const EdgeInsets.all(16.0),
//       child: Column(
//         children: [
//           Text("Selected Day = " + today.toString().split(" ")[0]),
//           Container(
//             child: TableCalendar(
//               locale: "India",
//               rowHeight: 43,
//               headerStyle: HeaderStyle(formatButtonVisible: false, titleCentered: true),
//               availableGestures: AvailableGestures.all,
//               selectedDayPredicate: (day) => isSameDay(day, today),
//               focusedDay: today,
//               firstDay: DateTime.utc(2010, 10, 16),
//               lastDay: DateTime.utc(2030, 3, 14),
//               onDaySelected: _onDaySelected,
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
