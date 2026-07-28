import 'package:flutter/material.dart';
import 'package:notsapp/models/note_model.dart';
import 'package:notsapp/widgets/edit_note_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key, required this.note});
  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("edit")),
      body: EditNoteViewBody(note: note),
    );
  }
}
