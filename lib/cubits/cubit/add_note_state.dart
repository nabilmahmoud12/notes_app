part of 'add_note_cubit.dart';

@immutable
sealed class AddNoteState {}

final class AddNoteInitial extends AddNoteState {}

final class AddNoteloading extends AddNoteState {}

final class AddNotesucces extends AddNoteState {}

final class AddNotefailuer extends AddNoteState {
  final String errormessage;

  AddNotefailuer({required this.errormessage});
}
