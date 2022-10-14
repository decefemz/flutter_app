import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2/vars.dart';
import 'package:flutter_application_2/widgets/compound/userdisplay.dart';
import 'package:flutter_application_2/widgets/primitive/primarybutton.dart';
import 'package:flutter_application_2/widgets/primitive/primaryinput.dart';
import 'package:flutter_application_2/widgets/primitive/text/H1.dart';
import 'package:flutter_application_2/widgets/primitive/text/H4.dart';
import 'package:flutter_application_2/widgets/primitive/text/H5.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.light,
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: GREY,
        systemNavigationBarIconBrightness: Brightness.light,
      ),
      child: Scaffold(
        backgroundColor: GREY,
        body: Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                    margin: const EdgeInsets.only(top: 60.0),
                    child: H1('Home')),
                Container(
                    margin: const EdgeInsets.only(top: 10.0),
                    child: H4("All Users")),
                Column(
                  children: [
                    Container(
                        margin: const EdgeInsets.fromLTRB(10.0, 60.0, 0, 5),
                        child: H5("ME:")),
                    UserDisplay("decentfemai", "decefemz@gmail.com", "", true),
                  ],
                ),
                Container(
                    margin: const EdgeInsets.fromLTRB(10.0, 60.0, 0, 5),
                    child: H5("ALL USERS:")),
                Container(
                  padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                  // color: LIGHT_GREY,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: MID_GREY,
                  ),
                  child: Container(
                    height: 250,
                    child: SingleChildScrollView(
                      child: Column(
                        // shrinkWrap: true,
                        children: [
                          //Will map through these instead of hard coding them when i get to doing the logic
                          UserDisplay("randoak1", "randoak1@gmail.com",
                              "18 hours ago", false),
                          UserDisplay("randoak2", "randoak2@gmail.com",
                              "18 hours ago", false),
                          UserDisplay("randoak3", "randoak3@gmail.com",
                              "18 hours ago", false),
                          UserDisplay("randoak2", "randoak2@gmail.com",
                              "18 hours ago", false),
                          UserDisplay("randoak3", "randoak3@gmail.com",
                              "18 hours ago", false)
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                    margin: const EdgeInsets.only(top: 20.0),
                    child: ButtonPrimary("Log Out")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
