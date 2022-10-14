import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2/vars.dart';
import 'package:flutter_application_2/widgets/primitive/primarybutton.dart';
import 'package:flutter_application_2/widgets/primitive/text/H4.dart';
import 'package:flutter_application_2/widgets/primitive/text/H5.dart';

class UserDisplay extends StatelessWidget {
  String name = "";
  String email = "";
  String last_login = "";
  bool isuser = false;

  UserDisplay(String name_par, String email_par, String last_login_par,
      bool isuser_par) {
    name = name_par;
    email = email_par;
    last_login = last_login_par;
    isuser = isuser_par;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
        padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
        child: Row(
          children: [
            Container(
                decoration: BoxDecoration(
                  color: LIGHTER_GREY,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Image.asset('assets/images/usericon.png')),
            Container(
              margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 3), child: H4(name)),
                  H5(email),
                  H5((last_login != "") ? "Last Login: ${last_login}" : ''),
                ],
              ),
            ),
            Visibility(
              visible: isuser,
              child: Expanded(
                  child: Container(
                      alignment: Alignment.centerRight,
                      margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
                      child: ButtonPrimary("Edit Profile"))),
            ),
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: LIGHT_GREY,
        ));
  }
}
