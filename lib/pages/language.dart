import 'package:flutter/material.dart';
import 'details.dart';
import 'package:provider/provider.dart';
import 'language_provider.dart';
import 'details_tamil.dart';

// This file is used to select one of the language from the options

class Language extends StatefulWidget {
  const Language({Key? key}) : super(key: key);

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  String dropdownvalue = 'English';
  var languages = ['English', 'தமிழ்'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF213555),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 0, 0, 0),
              child: Text(
                'Language',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50.0, 15, 0, 0),
              child: DropdownButton(
                // Initial Value
                value: dropdownvalue,
                // Down Arrow Icon
                icon: const Icon(Icons.keyboard_arrow_down),
                dropdownColor: Color(0xFF213555),
                // Array list of items
                items: languages.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(
                      items,
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 32,
                      ),
                    ),
                  );
                }).toList(),
                // After selecting the desired option,it will
                // change button value to selected value
                onChanged: (String? newValue) {
                  Provider.of<LanguageProvider>(context, listen: false)
                      .selectedLanguage = newValue!;
                  setState(() {
                    dropdownvalue = newValue!;
                  });
                },
              ),
            ),
          ],
        ),

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (dropdownvalue == 'தமிழ்') {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Details_tamil()),
            );
          } else {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Details()),
            );
          }
        },
        child: Icon(
          Icons.login_rounded,
          color: Colors.black,
          size: 45,
        ),
        backgroundColor: Color(0xFFFFFFFF),
      ),
    );
  }
}
