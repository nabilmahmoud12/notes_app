import 'package:flutter/material.dart';
import 'package:notsapp/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add, color: const Color.fromARGB(255, 24, 216, 255)),
      ),

      body: const NotesViewBody(),
    );
  }
}
