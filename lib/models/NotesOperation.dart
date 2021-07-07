import 'package:flutter/material.dart';
import 'package:flutter_belajar/models/Note.dart';

class NotesOperation extends ChangeNotifier {
  List<Note> _notes = List<Note>.empty(growable: true);

  List<Note> get getNotes {
    return _notes;
  }

  NotesOperation() {
    addNewNote('First Note Title', 'First Note Description');
  }

  void addNewNote(String titleText, String descriptionText) {
    Note note = Note(titleText, descriptionText);
    _notes.add(note);
    notifyListeners();
  }
}
