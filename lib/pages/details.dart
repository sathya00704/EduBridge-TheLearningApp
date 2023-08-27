import 'package:edubridge/pages/std_provider.dart';
import 'package:flutter/material.dart';
import 'course.dart';
import 'package:provider/provider.dart';
import 'user_provider.dart';

// Used to enter value of name and select class

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {

  String dropdownvalue = '12';
  String inputname = '';
  bool isNameValid = false;

  var classstud = ['12','11','10','9','8','7','6','5','4','3','2','1'];

  bool validateName(String value) {
    // Validate that the name contains only alphabetic characters and backspace
    return RegExp(r'^[a-zA-Z\s]+$').hasMatch(value);
  }
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
              padding: const EdgeInsets.fromLTRB(120,0,0,60),
              child: Text(
                'Your Details',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28
                )
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30.0, 0, 0, 0),
              child: Text(
                  'Name',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 28
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: TextField(
                style: TextStyle(color: Colors.white),
                onChanged: (value) {
                  setState(() {
                    inputname = value;
                    isNameValid = validateName(value);
                  });
                  Provider.of<UserProvider>(context, listen: false).setUserName(value); // Set the user name
                },
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  hintText: 'Enter your name',
                  hintStyle: TextStyle(color: Colors.grey),
                  errorText: isNameValid ? null : 'Invalid name',
                  errorStyle: TextStyle(fontSize: 18),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30.0, 0, 0, 0),
              child: Text(
                  'Class',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 28
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50.0,15,0,0),
              child: DropdownButton(
                // Initial Value
                value: dropdownvalue,
                // Down Arrow Icon
                icon: const Icon(Icons.keyboard_arrow_down),
                dropdownColor: Color(0xFF213555),
                // Array list of items
                items: classstud.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(
                      items,
                      style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 32
                      ),
                    ),

                  );
                }).toList(),
                onChanged: (String? newValue) {
                  Provider.of<StandardProvider>(context, listen: false)
                      .selectedclass = newValue!;
                  setState(() {
                    dropdownvalue = newValue!;
                  });
                },
              ),
            ),

          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: isNameValid
            ? () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Course()),
          );
        }: null,
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
