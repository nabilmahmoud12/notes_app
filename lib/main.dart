import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notsapp/Views/helper/constants.dart';
import 'package:notsapp/Views/notes_view.dart';

void main() async {
  await Hive.initFlutter(); //from flutter
  await Hive.openBox(kNotesBox);
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
