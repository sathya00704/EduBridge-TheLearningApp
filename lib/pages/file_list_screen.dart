import 'package:edubridge/pages/download.dart';
import 'package:edubridge/pages/chemistry_flash.dart';
import 'package:flutter/material.dart';
import 'file_content_screen.dart';
import 'videopage.dart';// Import the FileContentScreen

class FileListScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF213555),
      appBar: AppBar(
        backgroundColor: Color(0xFF213555),
        title: Text('View Files'),
        elevation: 0,
        actions: [
          TextButton.icon(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DownloadFilesPage()),
              );
            },
            icon: Icon(Icons.download, size: 30.0,
                color: Color(0xFFFF5EFE7)),
            label: Text(''),
          ),
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text(
              'Electrochemistry Flash Cards',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                letterSpacing: 1.2,
              ),
            ),
            leading: TextButton.icon(
              onPressed: () {},
              label: Text(''),
              icon: Icon(Icons.download,size: 30,color: Color(0xFFF5EFE7)),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ElectrochemistryFlash()
                ),
              );
            },
          ),
          ListTile(
            title: Text(
                'Electrochemistry',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              letterSpacing: 1.2,
            ),
            ),
            leading: TextButton.icon(
              onPressed: () {},
              label: Text(''),
              icon: Icon(Icons.download,size: 30,color: Color(0xFFF5EFE7)),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => FileContentScreen(fileName: 'electrochemistry.txt')
                ),
              );
            },
          ),
          ListTile(
            title: Text(
                'Acids and Bases',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                letterSpacing: 1.2,
              ),
            ),
            leading: TextButton.icon(
              onPressed: () {},
              label: Text(''),
              icon: Icon(Icons.download,size: 30,color: Color(0xFFF5EFE7)),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => FileContentScreen(fileName: 'acidsandbases.txt')
                ),
              );
            },
          ),
          ListTile(
            title: Text(
                'Biomolecules',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                letterSpacing: 1.2,
              ),
            ),
            leading: TextButton.icon(
              onPressed: () {},
              label: Text(''),
              icon: Icon(Icons.download,size: 30,color: Color(0xFFF5EFE7)),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => FileContentScreen(fileName: 'Biomolecules.txt')
                ),
              );
            },
          ),
          ListTile(
            title: Text(
              'Lecture Video',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                letterSpacing: 1.2,
              ),
            ),
            leading: TextButton.icon(
              onPressed: () {},
              label: Text(''),
              icon: Icon(Icons.download,size: 30,color: Color(0xFFF5EFE7)),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => VideoPlayerScreen()
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
