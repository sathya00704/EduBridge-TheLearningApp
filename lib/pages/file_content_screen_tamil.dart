import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FileContentScreenTamil extends StatelessWidget {
  final String fileName;

  FileContentScreenTamil({required this.fileName});

  Future<String> _loadFileContent() async {
    try {
      return await rootBundle.loadString('assets/$fileName');
    } catch (error) {
      print('Error loading file content: $error');
      return 'Error loading file content.';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('கோப்பு விவரங்கள்'),
      ),
      body: FutureBuilder<String>(
        future: _loadFileContent(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error loading file content.'));
          } else {
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(snapshot.data ?? 'No content available.'),
              ),
            );
          }
        },
      ),
    );
  }
}
