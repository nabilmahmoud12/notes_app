import 'package:flutter/material.dart';
import 'package:notsapp/widgets/custom_AppBar.dart';
import 'package:notsapp/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: const Column(
        children: [
          SizedBox(height: 80),
          CustomAppBar(title: 'Edit Note', icon: Icons.check),
          SizedBox(height: 50),
          CustomTextField(hint: "title"),
          SizedBox(height: 20),

          CustomTextField(hint: "content", maxlines: 8),
        ],
      ),
    );
  }
}
