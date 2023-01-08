// import 'package:flutter/material.dart';
// import 'package:step_progress_indicator/step_progress_indicator.dart';
//
// class proChe extends StatefulWidget {
//   const proChe({Key? key}) : super(key: key);
//
//   @override
//   State<proChe> createState() => _proCheState();
// }
//
// class _proCheState extends State<proChe> {
//   @override
//   Widget build(BuildContext context) {
//     var math;
//     return Scaffold(
//       body: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: <Widget>[
//           CircularStepProgressIndicator(
//             totalSteps: 20,
//             currentStep: 12,
//             stepSize: 20,
//             selectedColor: Colors.red,
//             unselectedColor: Colors.purple[400],
//             padding: math.pi / 80,
//             width: 150,
//             height: 150,
//             startingAngle: -math.pi * 2 / 3,
//             arcSize: math.pi * 2 / 3 * 2,
//             gradientColor: LinearGradient(
//               colors: [Colors.red, Colors.white],
//             ),
//           ),
//           CircularStepProgressIndicator(
//             totalSteps: 100,
//             currentStep: 74,
//             stepSize: 10,
//             selectedColor: Colors.greenAccent,
//             unselectedColor: Colors.grey[200],
//             padding: 0,
//             width: 150,
//             height: 150,
//             selectedStepSize: 15,
//             roundedCap: (_, __) => true,
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/percent_indicator.dart';

class proChe extends StatefulWidget {
  const proChe({Key? key}) : super(key: key);

  @override
  _proCheState createState() => _proCheState();
}

class _proCheState extends State<proChe> {
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Scaffold(
        backgroundColor: Colors.deepPurple[100],
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircularPercentIndicator(
                  animation: true,
                  animationDuration: 10000,
                  radius: 10,
                  lineWidth: 4,
                  percent: 0.8,
                  progressColor: Colors.deepPurple,
                  backgroundColor: Colors.deepPurple.shade200,
                  circularStrokeCap: CircularStrokeCap.round,
                ),
                // LinearPercentIndicator(
                //   animation: true,
                //   animationDuration: 10000,
                //   lineHeight: 40,
                //   percent: 0.8,
                //   progressColor: Colors.deepPurple,
                //   backgroundColor: Colors.deepPurple.shade200,
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}