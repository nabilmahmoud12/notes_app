import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notsapp/cubits/cubit/add_note_cubit.dart';
import 'package:notsapp/models/note_model.dart';
import 'package:notsapp/widgets/custom_botton.dart';
import 'package:notsapp/widgets/custom_note_item.dart';
import 'package:notsapp/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  String? title, subtitle;
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(height: 40),
          CustomTextField(
            onsaved: (value) {
              title = value;
            },

            hint: "Title",
          ),
          const SizedBox(height: 20),
          CustomTextField(
            onsaved: (value) {
              subtitle = value;
            },

            hint: "content",
            maxlines: 8,
          ),
          const SizedBox(height: 50),

          CustomBotton(
            ontap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
                NoteModel note = NoteModel(
                  title: title!,
                  subtitle: subtitle!,
                  data: DateTime.now().toString(),
                  color: Colors.blue.value,
                );
                BlocProvider.of<AddNoteCubit>(context).addNote(note);
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
