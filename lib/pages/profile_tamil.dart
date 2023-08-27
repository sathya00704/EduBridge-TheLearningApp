import 'package:edubridge/pages/std_provider.dart';
import 'package:flutter/material.dart';
import 'details.dart';
import 'language.dart';
import 'loading.dart';
import 'package:provider/provider.dart';
import 'language_provider.dart';
import 'user_provider.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'examregn_tamil.dart';

void main() => runApp(MaterialApp(
  home: Profile_tamil(),
));

class Profile_tamil extends StatefulWidget {

  @override
  State<Profile_tamil> createState() => _Profile_tamilState();
}

class _Profile_tamilState extends State<Profile_tamil> {
  @override

  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xFF213555),
      appBar: AppBar(
        backgroundColor: Color(0xFF213555),
        title: Text('விவரங்கள்'),
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
                    'பெயர்:',
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
            //SizedBox(height: 10),
            Consumer<LanguageProvider>(
              builder: (context, languageProvider, _) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'உள்ளடக்க மொழி:',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        languageProvider.selectedLanguage, // Display selected language here
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
            //SizedBox(height: 10),
            Consumer<StandardProvider>(
              builder: (context, StandardProvider, _) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'வகுப்பு தேர்ந்தெடுக்கப்பட்டது: ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                        ),
                      ),
                      //SizedBox(width: 0),
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
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'நிறைவு சதவீதம்',
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
                backgroundColor: Colors.redAccent[200],
                valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'மதிப்பீட்டு மேம்பாட்டு விகிதம்',
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
                    'தேர்வு பதிவு',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(width: 170),
                  TextButton.icon(
                      onPressed: ()  {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => UserDetailsPageTamil()));
                      },
                      icon: Icon(Icons.keyboard_arrow_right,
                        color: Colors.white,
                        size: 30,),
                      label: Text('')
                  ),
                ],
              ),
            ),
            //SizedBox(height: 2),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'பரிந்துரைகள் / புகார்கள்',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(width: 15),
                  TextButton.icon(
                      onPressed: ()  {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Scaffold(
                              appBar: AppBar(
                                title: Text('பரிந்துரைகள் / புகார்கள்'),
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
                    'சுயவிவரத்தை நீக்கவும்',
                    style: TextStyle(
                      color: Colors.redAccent,
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(width: 30),
                  TextButton.icon(
                      onPressed: ()  {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('உறுதிப்படுத்தல்'),
                              content: Text('சுயவிவரத்தை நிச்சயமாக நீக்க விரும்புகிறீர்களா?'),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('ரத்து'),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                    // Perform the action here
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => Loading()));
                                  },
                                  child: Text('சரி'),
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