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
      home: UserDetailsPageTamil(),
    );
  }
}

class UserDetailsPageTamil extends StatefulWidget {
  @override
  _UserDetailsPageTamilState createState() => _UserDetailsPageTamilState();
}

class _UserDetailsPageTamilState extends State<UserDetailsPageTamil> {
  String? selectedClass;
  bool? isChemistrySelected = false;
  bool? isBiologySelected = false;
  bool? isMathsSelected = false;
  bool? isPhysicsSelected = false;

  final TextEditingController nameController = TextEditingController();

  List<String> classes = ['வகுப்பு 1', 'வகுப்பு 2', 'வகுப்பு 3', 'வகுப்பு 4', 'வகுப்பு 5', 'வகுப்பு 6', 'வகுப்பு 7', 'வகுப்பு 8', 'வகுப்பு 9', 'வகுப்பு 10', 'வகுப்பு 11', 'வகுப்பு 12'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF213555),
      appBar: AppBar(
        backgroundColor: Color(0xFF213555),
        title: Text('தேர்வு பதிவு'),
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
                labelText: 'பெயர்',
                labelStyle: TextStyle(color: Colors.white),
              ),
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 20),
            DropdownButton<String>(
              value: selectedClass,
              hint: Text('வகுப்பைத் தேர்ந்தெடுக்கவும்', style: TextStyle(color: Colors.white)),
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
              'பாடங்களைத் தேர்ந்தெடுக்கவும்',
              style: TextStyle(color: Colors.white),
            ),
            CheckboxListTile(
              title: Text('வேதியியல்', style: TextStyle(color: Colors.white)),
              value: isChemistrySelected,
              onChanged: (value) {
                setState(() {
                  isChemistrySelected = value;
                });
              },
            ),
            CheckboxListTile(
              title: Text('உயிரியல்', style: TextStyle(color: Colors.white)),
              value: isBiologySelected,
              onChanged: (value) {
                setState(() {
                  isBiologySelected = value;
                });
              },
            ),
            CheckboxListTile(
              title: Text('கணிதம்', style: TextStyle(color: Colors.white)),
              value: isMathsSelected,
              onChanged: (value) {
                setState(() {
                  isMathsSelected = value;
                });
              },
            ),
            CheckboxListTile(
              title: Text('இயற்பியல்', style: TextStyle(color: Colors.white)),
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
                child: Text('சமர்ப்பிக்கவும்', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
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
