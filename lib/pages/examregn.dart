import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//These classes will collect the details from the user and print it
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User Details',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: UserDetailsPage(),
    );
  }
}

///
class UserDetailsPage extends StatefulWidget {
  @override
  _UserDetailsPageState createState() => _UserDetailsPageState();
}

class _UserDetailsPageState extends State<UserDetailsPage> {
  String? selectedClass;
  bool? isChemistrySelected = false;
  bool? isBiologySelected = false;
  bool? isMathsSelected = false;
  bool? isPhysicsSelected = false;

  final TextEditingController nameController = TextEditingController();

  List<String> classes = ['Class 1', 'Class 2', 'Class 3', 'Class 4', 'Class 5', 'Class 6', 'Class 7', 'Class 8', 'Class 9', 'Class 10', 'Class 11', 'Class 12'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF213555),
      appBar: AppBar(
        backgroundColor: Color(0xFF213555),
        title: Text('Exam Registration'),
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: 'Name',
                labelStyle: TextStyle(color: Colors.white),
              ),
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 20),
            DropdownButton<String>(
              value: selectedClass,
              hint: Text('Select Class', style: TextStyle(color: Colors.white)),
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              onChanged: (newValue) {
                setState(() {
                  selectedClass = newValue;
                });
              },
              items: classes.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value, style: TextStyle(color: Colors.blueAccent)),
                );
              }).toList(),
            ),
            SizedBox(height: 20),
            Text(
              'Choose Subjects',
              style: TextStyle(color: Colors.white),
            ),
            CheckboxListTile(
              title: Text('Chemistry', style: TextStyle(color: Colors.white)),
              value: isChemistrySelected,
              onChanged: (value) {
                setState(() {
                  isChemistrySelected = value;
                });
              },
            ),
            CheckboxListTile(
              title: Text('Biology', style: TextStyle(color: Colors.white)),
              value: isBiologySelected,
              onChanged: (value) {
                setState(() {
                  isBiologySelected = value;
                });
              },
            ),
            CheckboxListTile(
              title: Text('Maths', style: TextStyle(color: Colors.white)),
              value: isMathsSelected,
              onChanged: (value) {
                setState(() {
                  isMathsSelected = value;
                });
              },
            ),
            CheckboxListTile(
              title: Text('Physics', style: TextStyle(color: Colors.white)),
              value: isPhysicsSelected,
              onChanged: (value) {
                setState(() {
                  isPhysicsSelected = value;
                });
              },
            ),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // You can handle the submit button action here
                  print('Name: ${nameController.text}');
                  print('Class: $selectedClass');
                  print('Chemistry: $isChemistrySelected');
                  print('Biology: $isBiologySelected');
                  print('Maths: $isMathsSelected');
                  print('Physics: $isPhysicsSelected');
                },
                child: Text('Submit', style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }
}
