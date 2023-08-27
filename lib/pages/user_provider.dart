import 'package:flutter/material.dart';

class UserProvider with ChangeNotifier {
  String _userName = 'Your Name'; // Default empty name

  String get userName => _userName;

  void setUserName(String newName) {
    _userName = newName;
    notifyListeners();
  }
}
