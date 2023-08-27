import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:video_player/video_player.dart';
import 'textfile.dart';
import 'atoms_tamil.dart';
import 'vector.dart';
import 'videopage.dart';
import 'electro_video.dart';
import 'textfile_tamil.dart';
import 'vector_tamil.dart';

/// The main page for displaying downloaded files and navigation to their respective content.
class  DownloadFilesPageTamil extends StatefulWidget {
  const DownloadFilesPageTamil ({super.key});

  @override
  State<DownloadFilesPageTamil> createState() => _DownloadFilesPageTamilState();
}

class _DownloadFilesPageTamilState extends State<DownloadFilesPageTamil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF213555),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.home),
          onPressed: () {
            Navigator.pushNamed(context,'/course_tamil');
          },
        ),
        title: const Text('பதிவிறக்கம் செய்யப்பட்ட கோப்புகள்',
        style: TextStyle(
          fontSize: 16,
        ),),
        centerTitle: true,
        backgroundColor: const Color(0xFF213555),
      ),
      body: Center(
        child: Column(children: <Widget>[
          //space between appbar and download icon
          const Padding(padding: EdgeInsets.symmetric(vertical:10, horizontal:30),
          ),
          //downloadimage
          // Image representing downloaded files section.
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => textfiletamil()));
                  },
                  icon: const Icon(Icons.description_outlined),
                  color: Colors.red,
                  iconSize: 30,
                ),
                IconButton(
                  onPressed:(){
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
                    Text('மின் வேதியியல்', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.white)),
                    SizedBox(height: 5),
                    Text('வகுப்பு 12',style: TextStyle(fontSize: 13, fontWeight: FontWeight.normal,color: Colors.white)),
                    Text('வேதியியல்',style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal,color: Colors.white)),
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AtomsTamil()));
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
                    Text('அணுக்கள் & அணுக்கருக்கள்', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold,color: Colors.white)),
                    SizedBox(height: 5),
                    Text('வகுப்பு 12',style: TextStyle(fontSize: 13, fontWeight: FontWeight.normal,color: Colors.white)),
                    Text('இயற்பியல்',style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal,color: Colors.white)),
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => vectortamil()));
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
                    Text('திசையன் இயற்கணிதம்', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold,color: Colors.white)),
                    SizedBox(height: 5),
                    Text('வகுப்பு 12',style: TextStyle(fontSize: 13, fontWeight: FontWeight.normal,color: Colors.white)),
                    Text('கணிதம்',style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal,color: Colors.white)),
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
