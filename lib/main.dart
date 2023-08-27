import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; // Import the provider package
import 'pages/language_provider.dart';
import 'pages/loading.dart';
import 'pages/course.dart';
import 'pages/std_provider.dart';
import 'pages/user_provider.dart';
import 'pages/course_tamil.dart';

// This file links to all the widgets in the app

void main() => runApp(
  MultiProvider( // Use MultiProvider to provide multiple providers
    providers: [
      ChangeNotifierProvider(create: (context) => LanguageProvider()),
      ChangeNotifierProvider(create: (context) => StandardProvider()),
      ChangeNotifierProvider(create: (context) => UserProvider()),
    ],
    child: MyApp(),
  ),
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Loading(),
        '/course': (context) => Course(),
        '/course_tamil': (context) => Course_tamil(),
      },
    );
  }
}
