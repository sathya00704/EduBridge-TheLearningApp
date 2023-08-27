
import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:video_player/video_player.dart';
import 'textfile.dart';
import 'atoms.dart';
import 'vector.dart';
import 'videopage.dart';
import 'electro_video.dart';

/// The main page for displaying downloaded files and navigation to their respective content.
class  DownloadFilesPage extends StatefulWidget {
  const DownloadFilesPage ({super.key});

  @override
  State<DownloadFilesPage> createState() => _DownloadFilesPageState();
}

class _DownloadFilesPageState extends State<DownloadFilesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF213555),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.home),
          onPressed: () {
            // Navigate back to the course page.
            Navigator.pushNamed(context,'/course');
          },
        ),
        title: const Text('Downloaded Files'),
        centerTitle: true,
        backgroundColor: const Color(0xFF213555),
      ),
      body: Center(
        child: Column(children: <Widget>[
          //space between appbar and download icon
          const Padding(padding: EdgeInsets.symmetric(vertical:10, horizontal:30),
          ),
          // Image representing downloaded files section.

          //downloadimage
          Container(
            width: 400,
            height: 150,
            margin: const EdgeInsets.all(10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: const Image(
                image: AssetImage(
                    'assets/downloaded files pic.jpg'),
              ),
            ),
          ),
          //space between download 1st file
          const Padding(padding: EdgeInsets.symmetric(vertical:10, horizontal:30),
          ),
          Container(
            width: 320,
            height: 100,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white), // Outline color
              borderRadius: BorderRadius.circular(10),
            ),
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed:(){
                    // Navigate to the textfile screen when the description button is pressed.
                    Navigator.push(context, MaterialPageRoute(builder: (context) => textfile()));
                  },
                  icon: const Icon(Icons.description_outlined),
                  color: Colors.red,
                  iconSize: 30,
                ),
                IconButton(
                  onPressed:(){
                    // Navigate to the video player screen when the video button is pressed.
                    Navigator.push(context, MaterialPageRoute(builder: (context) => VideoPlayerScreen()));
                  },
                  icon: Icon(Icons.play_circle),
                  color: Colors.grey,
                  iconSize: 30,
                ),
                Image(image: AssetImage('assets/chemistry icon.png'),
                ),
                Column(
                  children: [
                    Text(''),
                    Text('ELECTROCHEMISTRY', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.white)),
                    SizedBox(height: 5),
                    Text('Class 12',style: TextStyle(fontSize: 13, fontWeight: FontWeight.normal,color: Colors.white)),
                    Text('Chemistry',style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal,color: Colors.white)),
                  ],
                )
              ],
            ),
          ),
          //phy
          const Padding(padding: EdgeInsets.symmetric(vertical:10, horizontal:30),
          ),
          Container(
            width: 320,
            height: 100,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white), // Outline color
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed:(){

                    Navigator.push(context, MaterialPageRoute(builder: (context) => Atoms()));
                  },
                  icon: const Icon(Icons.description_outlined),
                  color: Colors.red,
                  iconSize: 30,
                ),
                IconButton(
                  onPressed:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => VideoPlayerScreen()));
                  },
                  icon: const Icon(Icons.play_circle),
                  color: Colors.grey,
                  iconSize: 30,
                ),
                const Image(image: AssetImage('assets/physics icon.png'),
                ),
                Column(
                  children: [
                    Text(''),
                    Text('  ATOMS & NUCLEI  ', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.white)),
                    SizedBox(height: 5),
                    Text('Class 12',style: TextStyle(fontSize: 13, fontWeight: FontWeight.normal,color: Colors.white)),
                    Text('Physics',style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal,color: Colors.white)),
                  ],
                )
              ],
            ),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical:10, horizontal:30),
          ),
          Container(
            width: 320,
            height: 100,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white), // Outline color
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Vector()));
                  },
                  icon: const Icon(Icons.description_outlined),
                  color: Colors.red,
                  iconSize: 30,
                ),
                IconButton(
                  onPressed:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => VideoPlayerScreen()));
                  },
                  icon: const Icon(Icons.play_circle),
                  color: Colors.grey,
                  iconSize: 30,
                ),
                const Image(image: AssetImage('assets/maths icon.png'),
                ),
                Column(
                  children: [
                    Text(''),
                    Text(' VECTOR ALGEBRA ', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.white)),
                    SizedBox(height: 5),
                    Text('Class 12',style: TextStyle(fontSize: 13, fontWeight: FontWeight.normal,color: Colors.white)),
                    Text('Mathematics',style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal,color: Colors.white)),
                  ],
                )
              ],
            ),
          ),
        ],
        ),
      ),
    );
  }
}
