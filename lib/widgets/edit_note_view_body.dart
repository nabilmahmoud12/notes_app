import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notsapp/Views/helper/constants.dart';
import 'package:notsapp/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notsapp/cubits/note_cubit/note_cubit.dart';
import 'package:notsapp/models/note_model.dart';
import 'package:notsapp/widgets/Edit_note_color_list_view.dart';
import 'package:notsapp/widgets/color_item_and_list_view.dart';
import 'package:notsapp/widgets/custom_AppBar_1_3.dart';
import 'package:notsapp/widgets/custom_text_field_2_3.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

String? title, subtitle;

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(height: 80),
          CustomAppBar(
            onpressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subtitle = subtitle ?? widget.note.subtitle;
              widget.note.save();
              BlocProvider.of<NoteCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
            title: 'Edit Note',
            icon: Icons.check,
          ),
          const SizedBox(height: 50),
          CustomTextField(
            onChanged: (value) {
              title = value;
            },
            hint: widget.note.title,
          ),
          const SizedBox(height: 20),

          CustomTextField(
            onChanged: (value) {
              subtitle = value;
            },
            hint: widget.note.subtitle,
            maxlines: 8,
          ),
          const SizedBox(height: 40),
          EditNoteColorList(note: widget.note),
        ],
      ),
    );
  }
}
