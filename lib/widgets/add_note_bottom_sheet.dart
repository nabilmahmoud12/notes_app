import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notsapp/cubits/cubit/add_note_cubit.dart';
import 'package:notsapp/widgets/add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNotesucces) {
            Navigator.pop(context);
          }
          if (state is AddNotefailuer) {
            print(" error with add note failer ${state.errormessage}");
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNoteloading
                ? true
                : false, //kafl to textfield
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: AddNoteForm(),
              ),
            ),
          );
        },
      ),
    );
  }
}
