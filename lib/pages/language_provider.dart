import 'package:flutter/foundation.dart';

// Deals with the actual change in language when selected

class LanguageProvider with ChangeNotifier {
  String _selectedLanguage = 'English';

  String get selectedLanguage => _selectedLanguage;

  set selectedLanguage(String language) {
    _selectedLanguage = language;
    notifyListeners();
  }
}
