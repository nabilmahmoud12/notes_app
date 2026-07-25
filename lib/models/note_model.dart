import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class NoteModel {
  final String title;
  final String subtitle;
  final String data;
  final int color;

  NoteModel({
    required this.title,
    required this.subtitle,
    required this.data,
    required this.color,
  });
}
