part of 'note_cubit.dart';

@immutable
sealed class NoteState {}

final class NoteInitial extends NoteState {}

final class NoteIsuccess extends NoteState {}

// part of 'note_cubit.dart';

// @immutable
// sealed class NoteState {}

// final class NoteInitial extends NoteState {}

// final class Noteloading extends NoteState {}

// final class NoteIsuccess extends NoteState {
//   final List<NoteModel> notes;

//   NoteIsuccess(this.notes);
// }

// final class Notefailure extends NoteState {
//   final String errormessage;

//   Notefailure({required this.errormessage});
// }
