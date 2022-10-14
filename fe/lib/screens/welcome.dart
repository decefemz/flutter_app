import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2/vars.dart';
import 'package:flutter_application_2/widgets/primitive/primarybutton.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

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
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ButtonPrimary("Register"),
                ButtonPrimary("Login", LIGHT_GREY)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
