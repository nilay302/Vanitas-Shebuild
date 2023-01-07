import 'package:flutter/material.dart';
import '../../../constants.dart';
class WelcomeImage extends StatelessWidget {
  const WelcomeImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        //crossAxisAlignment: CrossAxisAlignment.,
        children: [
          Padding(
            padding: EdgeInsets.all(0.0),
            child: Text(
              "Get started!"
                  ,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          SizedBox(height: defaultPadding *2),
          Row(
            children: [
              Spacer(),
              Expanded(
                flex: 8,
                child: Image.asset(
                  "assets/icons/cyc2.png",
                ),
              ),
              Spacer(),
            ],
          ),
          SizedBox(height: defaultPadding * 2),
        ],
      ),
    );
  }
}