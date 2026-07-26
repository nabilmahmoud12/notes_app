import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notsapp/Views/helper/constants.dart';
import 'package:notsapp/Views/notes_view.dart';
import 'package:notsapp/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notsapp/models/note_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notsapp/simple_bloc_observer.dart';

void main() async {
  Bloc.observer = SimpleBlocObserver();
  await Hive.initFlutter(); //from flutter
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);

  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: "Poppins"),
      home: NotesView(),
    );
  }
}
