import 'package:flutter/material.dart';
import 'package:notsapp/Views/helper/constants.dart';

class CustomBotton extends StatelessWidget {
  const CustomBotton({super.key, this.ontap, this.isloading = false});
  final void Function()? ontap;
  final bool isloading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: kPrimaryColor,
        ),
        child: Center(
          child: isloading
              ? SizedBox(
                  height: 25,
                  width: 25,
                  child: CircularProgressIndicator(color: Colors.black),
                )
              : Text(
                  "add",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
        ),
      ),
    );
  }
}
