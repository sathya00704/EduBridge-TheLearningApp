import 'package:flutter/material.dart';
import 'profile.dart';
import 'chemistry.dart';
import 'physics.dart';
import 'mathematics.dart';
import 'biology.dart';
import 'about.dart';
import 'download.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'wordfortheday.dart';

// Deals with the storage of files of respective subjects and accessing those files

class Course extends StatefulWidget {
  const Course({Key? key}) : super(key: key);

  @override
  State<Course> createState() => _CourseState();
}

class _CourseState extends State<Course> {
  bool _showAlreadyLoggedInMessage = false;

  List<String> subjects = ['Chemistry', 'Physics', 'Mathematics', 'Biology'];
  List<String> filteredSubjects = [];

  Map<String, Widget> subjectPages = {
    'Chemistry': Chemistry(),
    'Physics': Physics(),
    'Mathematics': Mathematics(),
    'Biology': Biology(),
  };

  @override

  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
      if (_showAlreadyLoggedInMessage) {
        setState(() {
          _showAlreadyLoggedInMessage = false;
        });
        return true;
      } else {
        setState(() {
          _showAlreadyLoggedInMessage = true;
        });
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Logged in already'),
            duration: Duration(seconds: 5),
          ),
        );

        return false;
      }
    },
    child: Scaffold(
      backgroundColor: Color(0xFF213555),
      appBar: AppBar(
        backgroundColor: Color(0xFF213555),
        elevation: 0,
        title: Row(
          children: <Widget>[
            // ... (app bar code)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: AssetImage(
                    'assets/EDUBRIDGE.png'),
                radius: 30.0,
              ),
            ),
            SizedBox(width: 10),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'EduBridge',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 3.0),
                  Text(
                    'Crossing boundaries for\naccessible learning',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        actions: [
          TextButton.icon(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Profile()),
              );
            },
            icon: Icon(Icons.account_circle_rounded, size: 40.0,
                color: Color(0xFFFF5EFE7)),
            label: Text(''),
          ),
        ],
      ),
      body:
        Column(
        children: <Widget>[
          SizedBox(height: 10.0),
          Stack(
            alignment: Alignment.topCenter,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: Image.asset(
                  'assets/notepenimage.jpg',
                  height: 200,
                  width: 370,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(5.0, 90.0, 160.0, 0),
                child: Text(
                  'Discover Here',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10.0),
          Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.lightBlueAccent[100],
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (
                            context) => Chemistry()));

                      },

                      child: Stack(
                        alignment: Alignment.center,
                        children: <Widget>[
                          Image.asset(
                            'assets/chemistry icon.png',
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 70.0, 0, 0),
                            child: Text(
                              'Chemistry',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.lightBlueAccent[100],
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (
                            context) => Physics()));
                      },
                      child: Stack(
                        alignment: Alignment.center,
                        children: <Widget>[
                          Image.asset(
                            'assets/physics icon.png',
                            // Replace with your physics image asset
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                          ),

                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 70.0, 0, 0),
                            child: Text(
                              'Physics',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10.0),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    // ... (container code for Mathematics)
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.lightBlueAccent[100],
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (
                            context) => Mathematics()));
                      },
                      child: Stack(
                        alignment: Alignment.center,
                        children: <Widget>[
                          Image.asset(
                            'assets/maths icon.png',
                            // Replace with your math image asset
                            width: 70,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 70.0, 0, 0),
                            child: Text(
                              'Mathematics',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(

                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.lightBlueAccent[100],
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (
                            context) => Biology()));
                      },
                      child: Stack(
                        alignment: Alignment.center,
                        children: <Widget>[
                          Image.asset(
                            'assets/class 12 cover pic.jpg',
                            // Replace with your chemistry image asset
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 70.0, 0, 0),
                            child: Text(
                              'Biology',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: Container(
      child: Row(
      children: [
      InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => DownloadFilesPage()));
      },
      child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Icon(Icons.download, size: 40.0, color: Colors.white),
      ),
      ),
      SizedBox(width: 60.0),
        InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => RandomWordScreen()));
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.notifications, size: 40.0, color: Colors.white),
          ),
        ),
        SizedBox(width: 60.0),
      InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Scaffold(
              appBar: AppBar(
                title: Text('TEST'),
                backgroundColor: Color(0xFF213555),
                elevation: 0,
              ),
              body: WebView(
                initialUrl: 'https://docs.google.com/forms/d/e/1FAIpQLSfwO4N94Z0sp9ffRjnyp8sGrs4XQUWIRaIybQGK76JSCuDAEQ/viewform?usp=sf_link',
                javascriptMode: JavascriptMode.unrestricted,
                onWebResourceError: (WebResourceError error) {
                  print('Web resource error: $error');
                },
              )
          ),
        ));
      },
      child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Icon(Icons.edit, size: 40.0, color: Colors.white),
      ),
      ),
      SizedBox(width: 60.0), // Add spacing between icons
      InkWell(
      onTap: () {
      // Add your info action here
        Navigator.push(context, MaterialPageRoute(builder: (context) => About()));
      },
      child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Icon(Icons.info, size: 40.0, color: Colors.white),
      ),
      ),

      ],
      ),
      ),
      ),
      );
    }
}
