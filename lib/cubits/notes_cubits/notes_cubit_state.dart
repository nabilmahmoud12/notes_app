part of 'notes_cubit_cubit.dart';

@immutable
sealed class NotesCubitState {}

final class NotesCubitInitial extends NotesCubitState {}

final class NotesCubitloading extends NotesCubitState {}

final class NotesCubitsuccess extends NotesCubitState {
  final List<NoteModel> notes;

  NotesCubitsuccess(this.notes);
}

final class NotesCubitfailure extends NotesCubitState {
  final String errormessage;

  NotesCubitfailure(this.errormessage);
}
