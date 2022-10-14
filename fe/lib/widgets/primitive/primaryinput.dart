import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2/vars.dart';

class PrimaryInput extends StatelessWidget {
  String value = "";
  String placeholder = "";

  PrimaryInput(String placeholer) {
    placeholder = placeholer;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 7.0),
      child: TextField(
        onChanged: (text) {
          value = text;
        },
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          hintText: placeholder,
          hintStyle: TextStyle(color: Colors.grey[600]),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: LIGHT_GREY, width: 2),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: DARK_GREY, width: 2),
          ),
          filled: true,
          fillColor: DARK_GREY,
        ),
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
