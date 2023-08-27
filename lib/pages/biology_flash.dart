import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BiologyFlash extends StatefulWidget {
  @override
  _BiologyFlashState createState() => _BiologyFlashState();
}

class _BiologyFlashState extends State<BiologyFlash> {
  String _currentFact = 'Loading...';
  List<String> _facts = [];
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _loadFacts();
  }

  Future<void> _loadFacts() async {
    final contents = await rootBundle.loadString('assets/bioflash.txt');
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
        content: Text('You are on the first card'),
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
        content: Text('You are on the last card'),
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
        title: Text('Flash Cards'),
        backgroundColor: Color(0xFF213555),
        elevation: 0,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'MICROBES IN HUMAN WELFARE',
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
    home: BiologyFlash(),
  ));
}
