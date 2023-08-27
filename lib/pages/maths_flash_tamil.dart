import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MathsFlashTamil extends StatefulWidget {
  @override
  _MathsFlashTamilState createState() => _MathsFlashTamilState();
}

class _MathsFlashTamilState extends State<MathsFlashTamil> {
  String _currentFact = 'பதிவேறுகிறது, காத்திருக்கவும்';
  List<String> _facts = [];
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _loadFacts();
  }

  Future<void> _loadFacts() async {
    final contents = await rootBundle.loadString('assets/mathsflashtamil.txt');
    print('Contents: $contents'); // Add this line
    _facts = LineSplitter.split(contents).toList();
    print('Facts: $_facts'); // Add this line
    _updateFact(_currentIndex);
  }

  void _updateFact(int index) {
    setState(() {
      _currentIndex = index;
      _currentFact = _facts[_currentIndex];
    });
  }

  void _goToPreviousFact() {
    if (_currentIndex > 0) {
      _updateFact(_currentIndex - 1);
    } else {
      final snackBar = SnackBar(
        content: Text('நீங்கள் முதல் அட்டையில் இருக்கிறீர்கள்'),
        duration: Duration(seconds: 3),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  void _goToNextFact() {
    if (_currentIndex < _facts.length - 1) {
      _updateFact(_currentIndex + 1);
    } else {
      final snackBar = SnackBar(
        content: Text('நீங்கள் கடைசி அட்டையில் இருக்கிறீர்கள்'),
        duration: Duration(seconds: 3),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF213555),
      appBar: AppBar(
        title: Text('ஃபிளாஷ் கார்டுகள்'),
        backgroundColor: Color(0xFF213555),
        elevation: 0,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'நிகழ்தகவு',
              style: TextStyle(fontSize: 20, color: Colors.white),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                _currentFact,
                style: TextStyle(fontSize: 20, color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: _goToPreviousFact,
                  icon: Icon(
                    Icons.keyboard_arrow_left,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 20),
                IconButton(
                  onPressed: _goToNextFact,
                  icon: Icon(
                    Icons.keyboard_arrow_right,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: MathsFlashTamil(),
  ));
}
