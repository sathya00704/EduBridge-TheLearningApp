import 'package:flutter/material.dart';
import 'download_tamil.dart';

/// The main widget for displaying the Tamil version of "Atoms & Nuclei".
class AtomsTamil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('அணுக்கள் & அணுக்கரு'),
          actions:[ IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              // Navigate back to the previous screen using the route to DownloadFilesPageTamil
              Navigator.push(context,  MaterialPageRoute(builder: (context) => DownloadFilesPageTamil()));
            },
          ),
          ],
          backgroundColor: Color(0xFF213555),// Set the background color of the app bar
        ),
        body: Center(
          child: TextFileViewer(rootBundle: DefaultAssetBundle.of(context)),// Display the text file content
      ),
      ),
    );
  }
}

/// A widget for displaying the content of a Tamil text file from the assets
class TextFileViewer extends StatelessWidget {
  final AssetBundle rootBundle;

  /// Constructor that accepts the rootBundle for loading assets.
  TextFileViewer({required this.rootBundle});

  Future<String> _loadTextAsset() async {
    return await rootBundle.loadString('assets/Atomsnuclei_tamil.txt');
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
      future: _loadTextAsset(),// The Future that fetches the Tamil text content
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          // Display the Tamil text content in a scrollable view
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(snapshot.data!),// Display the loaded Tamil text content
            ),

          );
        } else if (snapshot.hasError) {
          print(snapshot.error);// Print the error if loading fails
          return Text('Error loading text file.');// Display an error message
        } else {
          return CircularProgressIndicator(); // Show loading indicator
        }
      },
    );
  }
}