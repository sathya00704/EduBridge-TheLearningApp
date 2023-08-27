import 'package:flutter/material.dart';
import 'download.dart';

// The main widget that represents the screen for displaying the text content
class Atoms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ATOMS & NUCLEI'),
          actions:[ IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              // Navigates back to the previous screen using the route to the DownloadFilesPage
              Navigator.push(context,  MaterialPageRoute(builder: (context) => DownloadFilesPage()));
            },
          ),
          ],
          backgroundColor: Color(0xFF213555),// Set the background color of the app bar.
        ),
        body: Center(
          // Displays the text file content
          child: TextFileViewer(rootBundle: DefaultAssetBundle.of(context)),
        ),
      ),
    );
  }
}

// A widget for displaying the content of a text file from the assets
class TextFileViewer extends StatelessWidget {
  final AssetBundle rootBundle;

  // Constructor that accepts the rootBundle for loading assets
  TextFileViewer({required this.rootBundle});

  // Loads and returns the content of the text asset
  Future<String> _loadTextAsset() async {
    return await rootBundle.loadString('assets/Atomsnuclei.txt');
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
      future: _loadTextAsset(),// The Future that fetches the text content
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          // Display the text content in a scrollable view
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(snapshot.data!),// Display the loaded text content
            ),

          );
        } else if (snapshot.hasError) {
          print(snapshot.error);// Print the error if loading fails
          return Text('Error loading text file.');// Display an error message
        } else {
          return CircularProgressIndicator(); // Show loading indicator while waiting for data
        }
      },
    );
  }
}