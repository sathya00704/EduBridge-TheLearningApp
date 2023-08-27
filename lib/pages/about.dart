import 'package:flutter/material.dart';

//About section will give the address of the EduBridge Headquarters
class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF213555),
      appBar: AppBar(
        backgroundColor: Color(0xFF213555),
        title: Text(
            'ABOUT',
        style: TextStyle(
          fontSize: 25.0,
          color: Colors.white,
        ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Text(
        '\nEDUBRIDGE HEADQUARTERS \nNO 24, Habibullah Rd,\nT. Nagar, Chennai,\nTamil Nadu 600017\n\nFax: 044 123 4567\n\nPhone Number: 98765 43210\n\nEmail ID: hqrts@edubridge.in\n\nWebsite: edubridge.in',
        style: TextStyle(
          letterSpacing: 1.2,
          fontSize: 20.0,
          color: Colors.white,
        ),
      ),
    );
  }
}
