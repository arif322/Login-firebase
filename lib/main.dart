import 'package:flutter/material.dart';
// import 'package:login_firebase/homepage/home.dart';
// import 'package:login_firebase/pages/login_page.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:login_firebase/homepage.dart';

import 'package:login_firebase/pages/login_page.dart';
import 'package:login_firebase/playing/upcoming.dart';
import 'package:login_firebase/profile/profile.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: LogInPage.path,
      routes: {
        LogInPage.path: (context) => LogInPage(),
        Homepage.path: (context) => Homepage(),
        PlayedPage.path: (context) => PlayedPage(),
        ProfilePage.path: (context) => ProfilePage()
      },
      // home: PlayedPage(),
    );
  }
}
