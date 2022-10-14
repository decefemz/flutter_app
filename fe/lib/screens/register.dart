import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2/vars.dart';
import 'package:flutter_application_2/widgets/primitive/primarybutton.dart';
import 'package:flutter_application_2/widgets/primitive/primaryinput.dart';
import 'package:flutter_application_2/widgets/primitive/text/H1.dart';
import 'package:flutter_application_2/widgets/primitive/text/H4.dart';
import 'package:flutter_application_2/widgets/primitive/text/H5.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.light,
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: GREY, // Change Background color
        systemNavigationBarIconBrightness:
            Brightness.light, // Change Icon color
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
                    child: H1('Sign Up')),
                Container(
                    margin: const EdgeInsets.only(top: 10.0),
                    child: H4("Please create an account to continue.")),
                Container(
                    margin: const EdgeInsets.fromLTRB(10.0, 60.0, 0, 5),
                    child: H5("ACCOUNT INFORMATION:")),
                PrimaryInput('What should we call you?'),
                PrimaryInput('Password'),
                // PrimaryInput('Email'),
                Container(
                    margin: const EdgeInsets.fromLTRB(10.0, 20.0, 0, 5),
                    child: H5("EMAIL:")),
                PrimaryInput(''),

                Container(
                    margin: const EdgeInsets.only(top: 20.0),
                    child: ButtonPrimary("Next")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
