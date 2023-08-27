import 'package:flutter/material.dart';
import 'file_list_screen_biology.dart';

class Biology extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF213555),
      appBar: AppBar(
        backgroundColor: Color(0xFF213555),
        title: Text('File Viewer'),
        elevation: 0,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FileListScreenBiology()));
          },
          style: ElevatedButton.styleFrom(
            primary: Colors.lightBlueAccent[100], // Background color
            onPrimary: Colors.black, // Text color
            padding: EdgeInsets.all(12), // Padding
            elevation: 5, // Elevation
            textStyle: TextStyle(fontSize: 20), // Text style
          ),
          child: Text(
            'Click Here for Files',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
