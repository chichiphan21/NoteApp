import 'package:flutter/foundation.dart';
import '../models/note.dart';

/// Provider class for managing notes state using ChangeNotifier
class NoteProvider extends ChangeNotifier {
  final List<Note> _notes = [];

  /// Returns an unmodifiable list of all notes
  List<Note> get notes => List.unmodifiable(_notes);

  /// Returns the count of notes
  int get noteCount => _notes.length;

  /// Adds a new note to the list
  void addNote(String title, String content) {
    final note = Note(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      title: title,
      content: content,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );
    _notes.insert(0, note); // Add at the beginning
    notifyListeners();
  }

  /// Updates an existing note
  void updateNote(String id, String title, String content) {
    final index = _notes.indexWhere((note) => note.id == id);
    if (index != -1) {
      _notes[index] = _notes[index].copyWith(
        title: title,
        content: content,
        updatedAt: DateTime.now(),
      );
      notifyListeners();
    }
  }

  /// Deletes a note by id
  void deleteNote(String id) {
    _notes.removeWhere((note) => note.id == id);
    notifyListeners();
  }

  /// Gets a single note by id
  Note? getNoteById(String id) {
    try {
      return _notes.firstWhere((note) => note.id == id);
    } catch (e) {
      return null;
    }
  }

  /// Clears all notes
  void clearAllNotes() {
    _notes.clear();
    notifyListeners();
  }
}
