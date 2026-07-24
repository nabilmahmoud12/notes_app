import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 24, bottom: 24, left: 14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.yellow,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text(
              "Flutter Taps",
              style: TextStyle(color: Colors.black, fontSize: 27),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 15),
              child: Text(
                "Build your career with    nabil mahmoud",
                style: TextStyle(
                  color: Colors.black.withAlpha(150),
                  fontSize: 18,
                ),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const FaIcon(
                FontAwesomeIcons.trash,
                size: 30,
                color: Colors.black,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Text(
              "May21 , 2022",
              style: TextStyle(color: Colors.black.withAlpha(160)),
            ),
          ),
        ],
      ),
    );
  }
}
