import 'package:edubridge/pages/download.dart';
import 'package:flutter/material.dart';
import 'file_content_screen.dart';
import 'videopage.dart';
import 'videopage_tamil.dart';
import 'file_content_screen_tamil.dart';
import 'download_tamil.dart';
import 'chemistry_flash_tamil.dart';

class FileListScreenChemTamil extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF213555),
      appBar: AppBar(
        backgroundColor: Color(0xFF213555),
        title: Text('கோப்புகளைப் பார்க்கவும்',
          style: TextStyle(
            fontSize: 17,
          ),
        ),
        elevation: 0,
        actions: [
          // ... (app bar actions)
          TextButton.icon(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DownloadFilesPageTamil()),
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
              'மின் வேதியியல் ஃபிளாஷ் அட்டை',
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
                    builder: (context) => ElectrochemistryFlashTamil()
                ),
              );
            },
          ),
          ListTile(
            title: Text(
              'மின் வேதியியல்',
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
                    builder: (context) => FileContentScreenTamil(fileName: 'electrochemistry_tamil.txt')
                ),
              );
            },
          ),
          ListTile(
            title: Text(
              'அமிலங்கள் மற்றும் அடிப்படைகள்',
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
                    builder: (context) => FileContentScreenTamil(fileName: 'acidsandbases_tamil.txt')
                ),
              );
            },
          ),
          ListTile(
            title: Text(
              'உயிர் மூலக்கூறுகள்',
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
                    builder: (context) => FileContentScreenTamil(fileName: 'Biomoleculestamil.txt')
                ),
              );
            },
          ),
          ListTile(
            title: Text(
              'விரிவுரை வீடியோ',
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
                    builder: (context) => VideoPlayerScreenTamil()
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
