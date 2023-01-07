import 'package:final_shebuilds/Screens/Settings/settingui.dart';
import 'package:flutter/material.dart';

class hoEDi extends StatefulWidget {
  const hoEDi({Key? key}) : super(key: key);

  @override
  State<hoEDi> createState() => _hoEDiState();
}

class _hoEDiState extends State<hoEDi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(


        height: 85,
        width: 350,
        child: InkWell(


          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Already done with the cycle? Change your Dates for further Tracking!"
              ),
            ),

            decoration: BoxDecoration(
              color: Colors.pink[100],

            ),
          ),
          //onTap: Navigator.push(context, MaterialPageRoute(builder: (context)=>EditProfileUI()));}
        ),
      ),
    );
  }
}
