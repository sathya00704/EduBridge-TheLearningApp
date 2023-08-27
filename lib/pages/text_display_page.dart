import 'package:flutter/material.dart';

class TextDisplayPage extends StatelessWidget {
  final String textContent;

  TextDisplayPage({required this.textContent});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Content'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Text(textContent),
      ),
    );
  }
}
