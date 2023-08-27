import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RandomWordScreenTamil(),
    );
  }
}

class RandomWordScreenTamil extends StatefulWidget {
  @override
  _RandomWordScreenTamilState createState() => _RandomWordScreenTamilState();
}

class _RandomWordScreenTamilState extends State<RandomWordScreenTamil> {
  List<String> wordList = [
    'மோல்: ஒரு இரசாயனப் பொருளின் அளவை வெளிப்படுத்தப் பயன்படும் அளவீட்டு அலகு.',
    'வினையூக்கி: நிரந்தர இரசாயன மாற்றத்திற்கு உட்படாமல் வேதிவினையின் வீதத்தை அதிகரிக்கும் ஒரு பொருள்.',
    'வழித்தோன்றல்: ஒரு செயல்பாடு அதன் உள்ளீடு மாறும்போது மாறும் விகிதம்; செயல்பாட்டின் வரைபடத்திற்கு தொடுகோட்டின் சாய்வை அளவிடுகிறது.',
    'ஒருங்கிணைவு: ஒரு செயல்பாட்டின் ஒருங்கிணைப்பைக் கண்டறியும் செயல்முறை, பெரும்பாலும் ஒரு வளைவின் கீழ் பகுதியைக் கண்டறிதல் என விளக்கப்படுகிறது.',
    'ஈர்ப்பு: இரண்டு வெகுஜனங்களை ஒன்றையொன்று நோக்கி ஈர்க்கும் விசை, அவற்றின் நிறை மற்றும் அவற்றுக்கிடையேயான தூரத்தைப் பொறுத்தது.',
    'மின்காந்த அலை: ஒரு மின்சார புலம் மற்றும் காந்தப்புலம் இடையேயான அதிர்வுகளின் விளைவாக உருவாக்கப்படும் அலை வகை.',
    'DNA: Deoxyribonucleic அமிலம், அறியப்பட்ட அனைத்து உயிரினங்களின் வளர்ச்சி மற்றும் செயல்பாட்டில் பயன்படுத்தப்படும் பெரும்பாலான மரபணு வழிமுறைகளைக் கொண்ட ஒரு மூலக்கூறு.',
    'செல் சவ்வு: ஒரு கலத்தின் சைட்டோபிளாஸைச் சுற்றியுள்ள அரை ஊடுருவக்கூடிய சவ்வு, செல்லின் உள்ளேயும் வெளியேயும் உள்ள பொருட்களின் இயக்கத்தைக் கட்டுப்படுத்துகிறது.'
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
        title: Text('இன்றைய வார்த்தை'),
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
              child: Text('வார்த்தையைக் காட்டு',
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24)),
            ),
          ],
        ),
      ),
    );
  }
}