import 'package:flutter/material.dart';
import 'package:notsapp/widgets/custom_search_icon_1.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    required this.icon,
    this.onpressed,
  });
  final String title;
  final IconData icon;
  final void Function()? onpressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: TextStyle(fontSize: 30)),

        CustomSearchIcon(onpressed: onpressed, icon: icon),
      ],
    );
  }
}
