import 'package:flutter/material.dart';

class hCon extends StatefulWidget {
  const hCon({Key? key}) : super(key: key);

  @override
  State<hCon> createState() => _hConState();
}

class _hConState extends State<hCon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(
                  'Menstruation,',
                  style: TextStyle(
                    color: Colors.pink[200],
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Ovulation!',
                  style: TextStyle(
                    color: Colors.pink[200],
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                //CalendarScreen(),
              ],
            ),
            //proChe(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'The follicular phase,',
                  style: TextStyle(
                    color: Colors.pink[200],
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'The luteal phase!',
                  style: TextStyle(
                    color: Colors.pink[200],
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                //CalendarScreen(),
              ],
            ),

],

        ),
      ),
    );

  }
}
