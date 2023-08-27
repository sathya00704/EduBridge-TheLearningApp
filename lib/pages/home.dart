import 'package:flutter/material.dart';

/// The main screen for the application's home page.
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      backgroundColor: Color(0xFF213555),
      appBar: AppBar(
        // AppBar actions for navigation to the 'DownloadFilesPage'.
      actions:[ IconButton(
          icon: Icon(Icons.download),
          onPressed: () {
            // Navigate to the 'DownloadFilesPage' when the download icon is pressed.
            Navigator.pushNamed(context,'/download');
          },
        ),
      ],
        backgroundColor: Color(0xFF213555),
      ),
   );
  }
}
