import 'package:final_shebuilds/Screens/Home.dart';
import 'package:final_shebuilds/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_auth/responsive.dart';

import '../../components/background.dart';
import '../../responsive.dart';
import 'components/login_form.dart';
import 'components/login_screen_top_image.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height/7),
        child: Responsive(
          mobile: const MobileLoginScreen(),
          desktop: Row(
            children: [
              // const Expanded(
              //   child: LoginScreenTopImage(),
              // ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    SizedBox(
                      width: 450,
                      child: LoginForm(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MobileLoginScreen extends StatelessWidget {
  const MobileLoginScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
    Text(
      "LOGIN",
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
    ),
    SizedBox(height: defaultPadding * 2),
    Row(
    children: [
    const Spacer(),
    Expanded(
    flex: 8,
    child: Image.asset("assets/icons/think.jpeg"),
    ),
    const Spacer(),
    ],
    ),
    SizedBox(height: defaultPadding * 2),
        // const LoginScreenTopImage(
        //
        // ),
        Row(
          children: const [
            Spacer(),
            Expanded(
              flex: 8,
              child: LoginForm(),
            ),
            Spacer(),
          ],
        ),
        // ElevatedButton(onPressed: () {
        //   Navigator.push((context), CupertinoPageRoute(builder: (context)=>Homepage()));
        // }, child: Text("Homepage"))
      ],
    );
  }
}