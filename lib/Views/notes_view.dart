import 'package:flutter/material.dart';
import 'package:notsapp/widgets/add_note_bottom_sheet.dart';
import 'package:notsapp/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            context: context,
            builder: (context) {
              return AddNoteBottomSheet();
            },
          );
        },
        child: Icon(Icons.add, color: const Color.fromARGB(255, 24, 216, 255)),
      ),

      body: const NotesViewBody(),
    );
  }
}
