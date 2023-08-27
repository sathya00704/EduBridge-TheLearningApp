import 'package:flutter/material.dart';
import 'profile.dart';
import 'about.dart';
import 'download.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'about_tamil.dart';
import 'profile_tamil.dart';
import 'phy_tamil.dart';
import 'chemistry_tamil.dart';
import 'biology_tamil.dart';
import 'mathematics_tamil.dart';
import 'download_tamil.dart';
import 'wordfortheday_tamil.dart';

// Deals with the storage of files of respective subjects and accessing those files

class Course_tamil extends StatefulWidget {
  const Course_tamil({Key? key}) : super(key: key);

  @override
  State<Course_tamil> createState() => _Course_tamilState();
}

class _Course_tamilState extends State<Course_tamil> {
  bool _showAlreadyLoggedInMessage = false;

  // TextEditingController _searchController = TextEditingController();
  List<String> subjects = ['Chemistry', 'Physics', 'Mathematics', 'Biology'];
  List<String> filteredSubjects = [];

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
                  MaterialPageRoute(builder: (context) => Profile_tamil()),
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
                  // Adjust the radius as needed
                  child: Image.asset(
                    'assets/notepenimage.jpg',
                    height: 200,
                    width: 370,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(40.0, 90.0, 160.0, 0),
                  child: Text(
                    'இங்கே கண்டறியவும்',
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
            // Add the rest of your layout here
            Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      // ... (container code for Chemistry)
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
                              context) => ChemistryTamil()));

                        },

                        child: Stack(
                          alignment: Alignment.center,
                          children: <Widget>[
                            Image.asset(
                              'assets/chemistry icon.png',
                              // Replace with your chemistry image asset
                              width: 50,
                              height: 50,
                              fit: BoxFit.cover,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 70.0, 0, 0),
                              child: Text(
                                'வேதியியல்',
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
                      // ... (container code for Physics)
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
                              context) => PhysicsTamil()));
                        },
                        child: Stack(
                          alignment: Alignment.center,
                          children: <Widget>[
                            Image.asset(
                              'assets/physics icon.png',
                              width: 50,
                              height: 50,
                              fit: BoxFit.cover,
                            ),

                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 70.0, 0, 0),
                              child: Text(
                                'இயற்பியல்',
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
                              context) => MathematicsTamil()));
                        },
                        child: Stack(
                          alignment: Alignment.center,
                          children: <Widget>[
                            Image.asset(
                              'assets/maths icon.png',
                              width: 70,
                              height: 50,
                              fit: BoxFit.cover,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 70.0, 0, 0),
                              child: Text(
                                'கணிதம்',
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
                      // ... (container code for Biology)

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
                              context) => BiologyTamil()));
                        },
                        child: Stack(
                          alignment: Alignment.center,
                          children: <Widget>[
                            Image.asset(
                              'assets/class 12 cover pic.jpg',
                              width: 50,
                              height: 50,
                              fit: BoxFit.cover,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 70.0, 0, 0),
                              child: Text(
                                'உயிரியல்',
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DownloadFilesPageTamil()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.download, size: 40.0, color: Colors.white),
                ),
              ),
              SizedBox(width: 60.0),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => RandomWordScreenTamil()));
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
                          title: Text('தேர்வு'),
                          backgroundColor: Color(0xFF213555),
                          elevation: 0,
                        ),
                        body: WebView(
                          initialUrl: 'https://docs.google.com/forms/d/e/1FAIpQLSfX7JtaoRe7zBhI93X45Mc67b-SKo679X9mTFDytG7PH9gWwQ/viewform?usp=sf_link',
                          javascriptMode: JavascriptMode.unrestricted,
                          onWebResourceError: (WebResourceError error) {
                            print('Web resource error: $error');
                            // Handle and display the error as needed
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => About_tamil()));
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
