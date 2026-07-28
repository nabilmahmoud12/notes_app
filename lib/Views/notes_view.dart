import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notsapp/cubits/note_cubit/note_cubit.dart';
import 'package:notsapp/widgets/add_note_bottom_sheet_2.dart';
import 'package:notsapp/widgets/notes_view_body_1.dart';

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
        child: Icon(Icons.add, color: const Color.fromARGB(255, 32, 255, 24)),
      ),

      body: const NotesViewBody(),
    );
  }
}
