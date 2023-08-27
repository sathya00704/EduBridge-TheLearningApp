import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'language_provider.dart';
import 'user_provider.dart';
import 'videopage.dart';

class NotesText extends StatefulWidget {
  const NotesText({Key? key}) : super(key: key);

  @override
  State<NotesText> createState() => _NotesTextState();
}

class _NotesTextState extends State<NotesText> {
  List<Map<String, dynamic>> _textInputs = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF213555),
      appBar: AppBar(
        backgroundColor: Color(0xFF213555),
        title: Text('My Notes'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        // itemCount: Provider.of<UserProvider>(context).textInputs.length,
        // itemBuilder: (context, index) {
        //   final text = Provider.of<UserProvider>(context).textInputs[index]['text'];
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: EdgeInsets.all(8),
              color: Colors.black.withOpacity(0.5),
              child: Text(
                text,
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 24,
                ),
              ),
            ),
          ),
      ),
    );
}
