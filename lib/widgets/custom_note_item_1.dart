import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notsapp/Views/edit_note_view.dart';
import 'package:notsapp/cubits/note_cubit/note_cubit.dart';
import 'package:notsapp/models/note_model.dart';
import 'package:intl/intl.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});
  // final Color color;
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return EditNoteView(note: note);
            },
          ),
        );
      },

      child: Container(
        padding: EdgeInsets.only(top: 24, bottom: 24, left: 14),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(note.color),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                note.title,
                style: const TextStyle(color: Colors.black, fontSize: 27),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 15),
                child: Text(
                  note.subtitle,
                  style: TextStyle(
                    color: Colors.black.withAlpha(150),
                    fontSize: 18,
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  note.delete();
                  BlocProvider.of<NoteCubit>(context).fetchAllNotes();
                },
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
                DateFormat('yyyy/MM/dd').format(DateTime.parse(note.data)),
                style: TextStyle(color: Colors.black.withAlpha(200)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
