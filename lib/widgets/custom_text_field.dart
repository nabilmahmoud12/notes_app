import 'package:flutter/material.dart';
import 'package:notsapp/Views/helper/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: KPrimaryColor,
      decoration: InputDecoration(
        hintText: "Title",
        hintStyle: TextStyle(color: KPrimaryColor, fontSize: 20),
        border: BuildBorder(),
        enabledBorder: BuildBorder(),
        focusedBorder: BuildBorder(color: KPrimaryColor),
      ),
    );
  }

  OutlineInputBorder BuildBorder({Color? color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(11),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
