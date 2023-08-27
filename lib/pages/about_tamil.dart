import 'package:flutter/material.dart';

//About section will give the address of the EduBridge Headquarters
class About_tamil extends StatefulWidget {
  const About_tamil({Key? key}) : super(key: key);

  @override
  State<About_tamil> createState() => _About_tamilState();
}

class _About_tamilState extends State<About_tamil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF213555),
      appBar: AppBar(
        backgroundColor: Color(0xFF213555),
        title: Text(
          'தொடர்பு விவரங்கள்',
          style: TextStyle(
            fontSize: 25.0,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Text(
        '\nEDUBRIDGE தலைமையகம் \nஎண் 24, ஹபிபுல்லா சாலை,\nT. நகர், சென்னை,\nதமிழ்நாடு 600017\n\nதொலைநகல்: 044 123 4567\n\nதொலைபேசி எண்: 98765 43210\n\nமின்னஞ்சல்: hqrts@edubridge.in\n\nஇணையதளம்: www.edubridge.in',
        style: TextStyle(
          letterSpacing: 1.4,
          fontSize: 20.0,
          color: Colors.white,
        ),
      ),
    );
  }
}
