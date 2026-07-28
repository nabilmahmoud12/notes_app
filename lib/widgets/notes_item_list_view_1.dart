import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notsapp/cubits/note_cubit/note_cubit.dart';
import 'package:notsapp/models/note_model.dart';
import 'package:notsapp/widgets/custom_note_item_1.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteCubit, NoteState>(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<NoteCubit>(context).notes!;
        return Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: ListView.builder(
              itemCount: notes.length,
              padding: EdgeInsets.zero,

              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: NoteItem(note: notes[index]),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
