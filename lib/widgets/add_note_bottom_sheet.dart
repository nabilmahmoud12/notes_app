import 'package:flutter/material.dart';
import 'package:notsapp/widgets/custom_botton.dart';
import 'package:notsapp/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: const Column(
          children: [
            SizedBox(height: 40),
            CustomTextField(hint: "Title"),
            SizedBox(height: 20),
            CustomTextField(hint: "content", maxlines: 8),
            SizedBox(height: 50),

            CustomBotton(),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
