import 'package:flutter/material.dart';
import 'download.dart';

/// The screen for displaying the content of a text file.
class textfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ELECTROCHEMISTRY'),
          actions:[ IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              // Navigate back to the download files page.
              Navigator.push(context,  MaterialPageRoute(builder: (context) => DownloadFilesPage()));
            },
          ),
          ],
          backgroundColor: Color(0xFF213555),
        ),
        body: Center(
          child: TextFileViewer(rootBundle: DefaultAssetBundle.of(context)),
        ),
      ),
    );
  }
}

/// A widget for displaying the content of a text file from assets.
class TextFileViewer extends StatelessWidget {
  final AssetBundle rootBundle;

  TextFileViewer({required this.rootBundle});

  /// Loads and returns the content of the text asset.
  Future<String> _loadTextAsset() async {
    return await rootBundle.loadString('assets/electrochemistry.txt');
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
      future: _loadTextAsset(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(snapshot.data!),
            ),

          );
        } else if (snapshot.hasError) {
          print(snapshot.error);// Print the error if loading fails.
          return Text('Error loading text file.');// Display an error message
        } else {
          return CircularProgressIndicator(); // Show loading indicator
        }
      },
    );
  }
}