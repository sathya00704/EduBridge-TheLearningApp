import 'package:flutter/material.dart';

class NoteProvider with ChangeNotifier {
  String _textInputs = 'Your Name'; // Default empty name

  String get userName => _textInputs;

  void setText(String newName) {
    _textInputs = newName;
    notifyListeners();
  }
}
