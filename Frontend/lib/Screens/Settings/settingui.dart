// import 'package:flutter/material.dart';
// //import 'package:settings_ui/pages/settings.dart';
//
// class SettingsUI extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: "Setting UI",
//       home: EditProfilePage(),
//     );
//   }
// }
//
// class EditProfilePage extends StatefulWidget {
//   @override
//   _EditProfilePageState createState() => _EditProfilePageState();
// }
//
// class _EditProfilePageState extends State<EditProfilePage> {
//   bool showPassword = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).scaffoldBackgroundColor,
//         elevation: 1,
//         leading: IconButton(
//           icon: Icon(
//             Icons.arrow_back,
//             color: Colors.green,
//           ),
//           onPressed: () {},
//         ),
//         actions: [
//           IconButton(
//             icon: Icon(
//               Icons.settings,
//               color: Colors.green,
//             ),
//             onPressed: () {
//               Navigator.of(context).push(MaterialPageRoute(
//                   builder: (BuildContext context) => SettingsUI()));
//             },
//           ),
//         ],
//       ),
//       body: Container(
//         padding: EdgeInsets.only(left: 16, top: 25, right: 16),
//         child: GestureDetector(
//           onTap: () {
//             FocusScope.of(context).unfocus();
//           },
//           child: ListView(
//             children: [
//               Text(
//                 "Edit Profile",
//                 style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
//               ),
//               SizedBox(
//                 height: 15,
//               ),
//               Center(
//                 child: Stack(
//                   children: [
//                     Container(
//                       width: 130,
//                       height: 130,
//                       decoration: BoxDecoration(
//                           border: Border.all(
//                               width: 4,
//                               color: Theme.of(context).scaffoldBackgroundColor),
//                           boxShadow: [
//                             BoxShadow(
//                                 spreadRadius: 2,
//                                 blurRadius: 10,
//                                 color: Colors.black.withOpacity(0.1),
//                                 offset: Offset(0, 10))
//                           ],
//                           shape: BoxShape.circle,
//                           image: DecorationImage(
//                               fit: BoxFit.cover,
//                               image: NetworkImage(
//                                 "https://images.pexels.com/photos/3307758/pexels-photo-3307758.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=250",
//                               ))),
//                     ),
//                     Positioned(
//                         bottom: 0,
//                         right: 0,
//                         child: Container(
//                           height: 40,
//                           width: 40,
//                           decoration: BoxDecoration(
//                             shape: BoxShape.circle,
//                             border: Border.all(
//                               width: 4,
//                               color: Theme.of(context).scaffoldBackgroundColor,
//                             ),
//                             color: Colors.green,
//                           ),
//                           child: Icon(
//                             Icons.edit,
//                             color: Colors.white,
//                           ),
//                         )),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 35,
//               ),
//               buildTextField("Full Name", "Dor Alex", false),
//               buildTextField("E-mail", "alexd@gmail.com", false),
//               buildTextField("Password", "********", true),
//               buildTextField("Location", "TLV, Israel", false),
//               SizedBox(
//                 height: 35,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   OutlineButton(
//                     padding: EdgeInsets.symmetric(horizontal: 50),
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(20)),
//                     onPressed: () {},
//                     child: Text("CANCEL",
//                         style: TextStyle(
//                             fontSize: 14,
//                             letterSpacing: 2.2,
//                             color: Colors.black)),
//                   ),
//                   RaisedButton(
//                     onPressed: () {},
//                     color: Colors.green,
//                     padding: EdgeInsets.symmetric(horizontal: 50),
//                     elevation: 2,
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(20)),
//                     child: Text(
//                       "SAVE",
//                       style: TextStyle(
//                           fontSize: 14,
//                           letterSpacing: 2.2,
//                           color: Colors.white),
//                     ),
//                   )
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget buildTextField(
//       String labelText, String placeholder, bool isPasswordTextField) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 35.0),
//       child: TextField(
//         obscureText: isPasswordTextField ? showPassword : false,
//         decoration: InputDecoration(
//             suffixIcon: isPasswordTextField
//                 ? IconButton(
//               onPressed: () {
//                 setState(() {
//                   showPassword = !showPassword;
//                 });
//               },
//               icon: Icon(
//                 Icons.remove_red_eye,
//                 color: Colors.grey,
//               ),
//             )
//                 : null,
//             contentPadding: EdgeInsets.only(bottom: 3),
//             labelText: labelText,
//             floatingLabelBehavior: FloatingLabelBehavior.always,
//             hintText: placeholder,
//             hintStyle: TextStyle(
//               fontSize: 16,
//               fontWeight: FontWeight.bold,
//               color: Colors.black,
//             )),
//       ),
//     );
//   }
// }

import 'package:final_shebuilds/Screens/Home.dart';
import 'package:final_shebuilds/Screens/Login/components/login_form.dart';
import 'package:final_shebuilds/Screens/Settings/widgets.dart';
import 'package:final_shebuilds/Screens/Signup/signup_screen.dart';
import 'package:final_shebuilds/Screens/Welcome/btmBar.dart';
import 'package:final_shebuilds/Screens/explore.dart';
import 'package:final_shebuilds/Screens/post.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:ionicons/ionicons.dart';
//import 'package:ionicons/ionicons.dart';
//import 'package:settings_screen_tutorial/widgets/settings_tile.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  TextEditingController empId = TextEditingController();

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
      //bottomNavigationBar: btmBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Settings",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 40),
              SettingsTile(
                color: Colors.pink.shade200,
                icon: Ionicons.person_circle_outline,
                title: "Account",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginForm();
                      },
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 10,
              ),
              SettingsTile(
                color: Colors.pink.shade200,
                icon: Ionicons.pencil_outline,
                title: "Edit Information",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EditProfileUI()
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 10,
              ),
              // SettingsTile(
              //   color: Colors.black,
              //   icon: Ionicons.moon_outline,
              //   title: "Theme",
              //   onTap: () {},
              // ),
              // const SizedBox(
              //   height: 10,
              // ),
              // SettingsTile(
              //   color: Colors.black,
              //   icon: Ionicons.language_outline,
              //   title: "Language",
              //   onTap: () {},
              // ),
              // const SizedBox(
              //   height: 10,
              // ),
              // SettingsTile(
              //   color: Colors.black,
              //   icon: Ionicons.moon_outline,
              //   title: "Clear Cache",
              //   onTap: () {},
              // ),
              // const SizedBox(
              //   height: 10,
              // ),
              // SettingsTile(
              //   color: Colors.black,
              //   icon: Ionicons.moon_outline,
              //   title: "Clear History",
              //   onTap: () {},
              // ),
              // const SizedBox(
              //   height: 10,
              // ),
              // SettingsTile(
              //   color: Colors.black,
              //   icon: Ionicons.moon_outline,
              //   title: "Clear App Data",
              //   onTap: () {},
              // ),
              // const SizedBox(
              //   height: 10,
              // ),
              SettingsTile(
                color: Colors.pink.shade200,
                icon: Ionicons.people_circle_outline,
                title: "Feedback",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => EditProfileUI()
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 10,
              ),
              SettingsTile(
                color: Colors.pink.shade200,
                icon: Ionicons.log_out_outline,
                title: "Logout",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginForm();
                      },
                    ),
                  );
                },
                // TextField(
                //   controller: myController,
                // ),
                // onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// // ignore: unused_import
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(new1());
// }

// ignore: use_key_in_widget_constructors
// class new1 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'flutter demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: EditProfileUI(),
//     );
//   }
// }

// ignore: use_key_in_widget_constructors
class EditProfileUI extends StatefulWidget {
  @override
  // ignore: no_logic_in_create_state
  _EditProfileUIState createState() => _EditProfileUIState();
}

class _EditProfileUIState extends State<EditProfileUI> {
  get style => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 15, top: 20, right: 15),
        child: GestureDetector(
          onTap: () => {FocusScope.of(context).unfocus()},
          child: ListView(
            children: [
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                          border: Border.all(width: 4, color: Colors.white),
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 2,
                                blurRadius: 10,
                                color: Colors.black.withOpacity(0.1))
                          ],
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://www.shutterstock.com/image-vector/short-custom-urls-url-shortener-technology-2233924609"))),
                    ),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(width: 4, color: Colors.white),
                              color: Colors.blue),
                          child: Icon(
                            Icons.edit,
                            color: Colors.white,
                          ),
                        ))
                  ],
                ),
              ),
              SizedBox(height: 30),
              buildTextField("full name", "yourname", false),
              buildTextField("Email", "yourname@gmail.com", false),
              buildTextField("Password", "*******", false),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    // ignore: sort_child_properties_last
                    child: Text("cancel",
                        style: TextStyle(
                            fontSize: 15,
                            letterSpacing: 2,
                            color: Colors.black)),
                    style: OutlinedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    // ignore: sort_child_properties_last
                    child: Text("save",
                        style: TextStyle(
                            fontSize: 15,
                            letterSpacing: 2,
                            color: Colors.white)),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.blue,
                        padding: EdgeInsets.symmetric(horizontal: 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(
      String labelText, String placeholder, bool ispasswordtextfield) {
    return (Padding(
      padding: EdgeInsets.only(bottom: 30),
      child: TextField(
        obscureText: ispasswordtextfield ? ispasswordtextfield : false,
        decoration: InputDecoration(
          suffixIcon: ispasswordtextfield
              ? IconButton(
            icon: Icon(
              Icons.remove_red_eye,
              color: Colors.green,
            ),
            onPressed: () {},
          )
              : null,
          contentPadding: EdgeInsets.only(bottom: 5),
          labelText: labelText,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: placeholder,
          hintStyle: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.green),
        ),
      ),
    ));
  }
}