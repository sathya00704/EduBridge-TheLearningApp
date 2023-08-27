import 'package:edubridge/pages/std_provider.dart';
import 'package:flutter/material.dart';
import 'loading.dart';
import 'package:provider/provider.dart';
import 'language_provider.dart';
import 'user_provider.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'examregn.dart';

void main() => runApp(MaterialApp(
  home: Profile(),
));

class Profile extends StatefulWidget {

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  @override

  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xFF213555),
      appBar: AppBar(
        backgroundColor: Color(0xFF213555),
        title: Text('My Profile'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Name: ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    Provider.of<UserProvider>(context).userName,
                    style: TextStyle(
                      color: Colors.lightBlueAccent,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            ),
            Consumer<LanguageProvider>(
              builder: (context, languageProvider, _) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Content Language: ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        languageProvider.selectedLanguage,
                        style: TextStyle(
                          color: Colors.lightBlueAccent,
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            Consumer<StandardProvider>(
              builder: (context, StandardProvider, _) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Class Selected: ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        StandardProvider.selectedclass,
                        style: TextStyle(
                          color: Colors.lightBlueAccent,
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            SizedBox(height: 5),
            //The below widget is to show the progress bar in the profile section
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Course Completion Percentage',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 20.0,
              width: 250.0,
              color: Colors.transparent,
              child: LinearProgressIndicator(
                value: 0.6,
                backgroundColor: Colors.white,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Assessment Improvement Rate',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(width: 10),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
                height: 150.0,
                width: 250.0,
                color: Colors.transparent,
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xFFF5EFE7),
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  child: new Center(
                    child:
                    Image.asset('assets/graphchemistry.png'),
                  ),
                )
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Exam Registration',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(width: 130),
                  TextButton.icon(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => UserDetailsPage()));
                      },
                      icon: Icon(Icons.keyboard_arrow_right,
                        color: Colors.white,
                        size: 30,),
                      label: Text('')
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Suggestions/Complaints',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(width: 60),
                  TextButton.icon(
                      onPressed: ()  {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Scaffold(
                              appBar: AppBar(
                                title: Text('Suggestions/Complaints'),
                                backgroundColor: Color(0xFF213555),
                                elevation: 0,
                              ),
                              body: WebView(
                                initialUrl: 'https://docs.google.com/forms/d/e/1FAIpQLSfGjkf4YU1LVAdEU0TCJFXlPbQOIf_8TZ79OyZVTWjZWbiJHA/viewform?usp=sf_link',
                                javascriptMode: JavascriptMode.unrestricted,
                                onWebResourceError: (WebResourceError error) {
                                  print('Web resource error: $error');
                                },
                              )
                          ),
                        ));
                      },
                      icon: Icon(Icons.keyboard_arrow_right,
                        color: Colors.white,
                        size: 30,),
                      label: Text('')
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Delete this profile',
                    style: TextStyle(
                      color: Colors.redAccent,
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(width: 140),
                  TextButton.icon(
                      onPressed: ()  {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Confirmation'),
                              content: Text('Are you sure you want to delete the profile?'),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('Cancel'),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => Loading()));
                                  },
                                  child: Text('Confirm'),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      icon: Icon(Icons.keyboard_arrow_right,
                        color: Colors.white,
                        size: 30,),
                      label: Text('')
                  ),
                ],
              ),
            ),
            //SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

// This is the stateless widget that the main application instantiates.
class CircularProgressIndicatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      backgroundColor: Colors.red,
      strokeWidth: 8,);
  }
}