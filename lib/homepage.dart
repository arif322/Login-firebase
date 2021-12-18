import 'package:flutter/material.dart';
import 'package:login_firebase/homepage/home.dart';
import 'package:login_firebase/playing/upcoming.dart';
import 'package:login_firebase/profile/profile.dart';

class Homepage extends StatefulWidget {
  static const String path = 'Homepage';
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int indexNumber = 0;

  List tabPage = [
    HomePages(),
    PlayedPage(),
    ProfilePage(),
  ];

  void _pagetab(int index) {
    setState(() {
      indexNumber = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white38,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.redAccent,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.album), label: 'Album'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: indexNumber,
        onTap: _pagetab,
      ),
      body: (tabPage[indexNumber]),
    );
  }
}
