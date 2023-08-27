import 'package:edubridge/pages/download.dart';
import 'package:edubridge/pages/file_content_screen_tamil.dart';
import 'package:flutter/material.dart';
import 'file_content_screen.dart';
import 'videopage.dart';// Import the FileContentScreen
import 'videopage_tamil.dart';
import 'download_tamil.dart';
import 'physics_flash_tamil.dart';

class FileListScreenPhyTamil extends StatelessWidget {

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
              'மின்காந்த தூண்டல் ஃபிளாஷ் அட்டை',
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
                    builder: (context) => PhysicsFlashTamil()
                ),
              );
            },
          ),
          ListTile(
            title: Text(
              'மின்காந்த தூண்டல்',
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
                    builder: (context) => FileContentScreenTamil(fileName: 'elecfieldtamil.txt')
                ),
              );
            },
          ),
          ListTile(
            title: Text(
              'மின் கட்டணங்கள் மற்றும் புலங்கள்',
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
                    builder: (context) => FileContentScreenTamil(fileName: 'elecfieldtamil.txt')
                ),
              );
            },
          ),
          ListTile(
            title: Text(
              'தற்போதைய மின்சாரம்',
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
                    builder: (context) => FileContentScreenTamil(fileName: 'currelectamil.txt')
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
