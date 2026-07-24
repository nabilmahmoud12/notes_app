import 'package:flutter/material.dart';
import 'package:notsapp/widgets/custom_AppBar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(children: [SizedBox(height: 80), CustomAppBar()]),
    );
  }
}
