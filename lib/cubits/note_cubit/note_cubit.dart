import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notsapp/Views/helper/constants.dart';
import 'package:notsapp/models/note_model.dart';

part 'note_state.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(NoteInitial());

  fetchAllNotes(NoteModel note) async {
    // emit(Noteloading());

    try {
      var notesbox = Hive.box<NoteModel>(kNotesBox);
      emit(NoteIsuccess(notesbox.values.toList()));
    } catch (e) {
      emit(Notefailure(errormessage: e.toString()));
    }
  }
}
