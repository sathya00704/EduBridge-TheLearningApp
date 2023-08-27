import 'package:flutter/foundation.dart';

// Used to select a value from the dropdown

class StandardProvider with ChangeNotifier {
  String _selectedclass = '12';

  String get selectedclass => _selectedclass;

  set selectedclass(String standard) {
    _selectedclass = standard;
    notifyListeners();
  }
}
