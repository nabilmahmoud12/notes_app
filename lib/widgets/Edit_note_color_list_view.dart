import 'package:flutter/material.dart';
import 'package:notsapp/Views/helper/constants.dart';
import 'package:notsapp/models/note_model.dart';
import 'package:notsapp/widgets/color_item_and_list_view.dart';

class EditNoteColorList extends StatefulWidget {
  const EditNoteColorList({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteColorList> createState() => _EditNoteColorListState();
}

class _EditNoteColorListState extends State<EditNoteColorList> {
  late int currentIndex; //all nonull allll i give value

  @override
  void initState() {
    super.initState();
    currentIndex = kColorsList.indexOf(Color(widget.note.color));
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: kColorsList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                widget.note.color = kColorsList[index].value;

                setState(() {});
              },

              child: ColorItem(
                isActive: currentIndex == index,
                color: kColorsList[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
