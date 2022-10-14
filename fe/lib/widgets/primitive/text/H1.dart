import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_2/vars.dart';

class H1 extends StatelessWidget {
  // const H1({Key? key}) : super(key: key);

  String data = 'text';

  H1(String data_par) {
    data = data_par;
  }

  @override
  Widget build(BuildContext context) {
    return Text(data,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: MAIN_WHITE,
          fontSize: 24,
          fontWeight: FontWeight.w500,
        ));
  }
}
