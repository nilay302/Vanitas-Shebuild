
import 'package:final_shebuilds/Screens/Home.dart';
import 'package:final_shebuilds/Screens/Settings/settingui.dart';
//import 'package:final_shebuilds/Screens/circular_widget.dart';
import 'package:final_shebuilds/Screens/explore.dart';
import 'package:final_shebuilds/Screens/home_cont.dart';
import 'package:final_shebuilds/Screens/home_edit.dart';
import 'package:final_shebuilds/Screens/post.dart';
import 'package:final_shebuilds/Screens/progresscheck.dart';
import 'package:final_shebuilds/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:final_shebuilds/Screens/Welcome/btmBar.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime today = DateTime.now();
  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }
  DateTime date = DateTime.now();
  void showCalendar(){
    showDatePicker(
        context: (context),
        initialDate: DateTime.now(),
        firstDate: DateTime(1800),
        lastDate: DateTime(2025))
        .then((value) {
      setState(() {
        date = value!;
        });
      });


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GNav(
        rippleColor: Colors.grey!,
        hoverColor: Colors.white!,
        gap: 8,
        activeColor: Colors.white,
        iconSize: 24,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        duration: Duration(milliseconds: 400),
        tabBackgroundColor: Colors.pink[200]!,
        color: Colors.black,
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
      // appBar: AppBar(
      //   title: Text("Hi, Beautiful!"),
      //   backgroundColor: Colors.deepPurpleAccent,
      //
      // ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(

          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      CalendarScreen();

                    });
                  },
                  child: row(),

                ),
                //proChe(),
                //CircularWidget(),

                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.all(12),
                  child: Icon(
                    Icons.notifications,
                    color: Colors.pink[300],
                  ),
                )
              ],
            ),
            //proChe(),
          ],
        ),
      )),
      //MyApp(),


      // bottomNavigationBar: btmBar(),

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
      body: TableCalendar(
        firstDay: DateTime(2022),
        lastDay: DateTime(2023),
        focusedDay: _focusedDay,
        calendarFormat: _calendarFormat,
        startingDayOfWeek: StartingDayOfWeek.monday,
        rowHeight: 60,
        daysOfWeekHeight: 60,
        headerStyle: HeaderStyle(
          titleTextStyle:
          const TextStyle(color: Colors.teal, fontWeight: FontWeight.bold),
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
    );
  }
}

class row extends StatelessWidget {
  const row({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
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
            // CalendarScreen(),
            //
            // hCon(),
            // hoEDi(),
          ],
        ),
        //proChe(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.arrow_drop_down_circle_outlined),
        ),

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
