import 'package:flutter/material.dart';
import 'package:notsapp/widgets/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});
  final List<Color> color = const [Colors.yellow];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: 7,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: const NoteItem(),
            );
          },
        ),
      ),
    );
  }
}
