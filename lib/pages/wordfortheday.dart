import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RandomWordScreen(),
    );
  }
}

class RandomWordScreen extends StatefulWidget {
   @override
   _RandomWordScreenState createState() => _RandomWordScreenState();
}

class _RandomWordScreenState extends State<RandomWordScreen> {
  List<String> wordList = [
    'Mole: A unit of measurement used to express the amount of a chemical substance.',
    'Catalyst: A substance that increases the rate of a chemical reaction without itself undergoing any permanent chemical change.',
    'Derivative: The rate at which a function changes as its input changes; measures the slope of the tangent line to the graph of the function.',
    'Integration: The process of finding the integral of a function, often interpreted as finding the area under a curve.',
    'Gravity: The force that attracts two masses toward each other, dependent on their masses and the distance between them.',
    'Electromagnetic Wave: A type of wave that is created as a result of vibrations between an electric field and a magnetic field.',
    'DNA: Deoxyribonucleic acid, a molecule that carries most of the genetic instructions used in the development and functioning of all known living organisms.',
    'Cell Membrane: The semipermeable membrane that surrounds the cytoplasm of a cell, controlling the movement of substances in and out of the cell.'
    // Add more words to the list
  ];

  String currentWord = '';

  void generateRandomWord() {
    final random = Random();
    int randomIndex = random.nextInt(wordList.length);
    setState(() {
      currentWord = wordList[randomIndex];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF213555),
      appBar: AppBar(
        backgroundColor: Color(0xFF213555),
        title: Text('Word of the Day'),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                currentWord,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: generateRandomWord,
              child: Text('Generate Word',
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24)),
            ),
          ],
        ),
      ),
    );
  }
}