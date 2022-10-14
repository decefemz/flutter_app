import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/home.dart';
import 'package:flutter_application_2/screens/login.dart';
import 'package:flutter_application_2/screens/register.dart';
import 'package:flutter_application_2/screens/welcome.dart';
import 'package:flutter_application_2/vars.dart';
import 'package:flutter_application_2/widgets/primitive/primarybutton.dart';
import 'package:flutter_application_2/widgets/primitive/primaryinput.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home());
  }
}
