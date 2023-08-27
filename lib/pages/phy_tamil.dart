import 'package:flutter/material.dart';
import 'file_list_screen_phy_tamil.dart';

class PhysicsTamil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF213555),
      appBar: AppBar(
        backgroundColor: Color(0xFF213555),
        title: Text('கோப்பு பார்வையாளர்'),
        elevation: 0,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FileListScreenPhyTamil()));
          },
          style: ElevatedButton.styleFrom(
            primary: Colors.lightBlueAccent[100], // Background color
            onPrimary: Colors.black, // Text color
            padding: EdgeInsets.all(12), // Padding
            elevation: 5, // Elevation
            textStyle: TextStyle(fontSize: 20), // Text style
          ),
          child: Text(
            'கோப்புகளுக்கு இங்கே\nகிளிக் செய்யவும்',
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
