import 'package:hive/hive.dart';
part 'note_model.g.dart';

@HiveType(typeId: 0) //unic class 0
class NoteModel extends HiveObject {
  @HiveField(0) //not unic 2 class
  final String title;
  @HiveField(1)
  final String subtitle;
  @HiveField(2)
  final String data;
  @HiveField(3)
  final int color;

  NoteModel({
    required this.title,
    required this.subtitle,
    required this.data,
    required this.color,
  });
}
