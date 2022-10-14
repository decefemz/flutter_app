import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2/vars.dart';
// import 'package:flutter_application_2/vars.dart';

class ButtonPrimary extends StatelessWidget {
  // const ButtonPrimary extends({Key? key}) : super(key: key);
  String title = "button";
  var color = MAIN_BLUE;

  ButtonPrimary(String title_par, [Color color_par = MAIN_BLUE]) {
    title = title_par;
    color = color_par;
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(Colors.white),
          backgroundColor: MaterialStateProperty.all(color),
          elevation: MaterialStateProperty.all<double>(0)),
      child: Text(title),
      onPressed: () => {},
    );
  }
}
