import 'package:flutter/material.dart';

class MusicPage extends StatefulWidget {
  static const String path = "MusicPage";
  const MusicPage({Key? key}) : super(key: key);

  @override
  _MusicPageState createState() => _MusicPageState();
}

class _MusicPageState extends State<MusicPage> {
  double? svalue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.yellowAccent,
          selectedItemColor: Colors.teal,
          showSelectedLabels: false,
          showUnselectedLabels: true,
          elevation: 8,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.arrow_downward_outlined),
              label: 'Download',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.share),
              label: 'Share',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.music_note),
              label: 'Music List',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.audiotrack),
              label: 'Sound',
            ),
          ]),
      backgroundColor: Colors.white38,
      body: SafeArea(
          child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.blueAccent,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 25, left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back_ios),
                  ),
                  Text(
                    'Now Playing',
                    style: TextStyle(
                        color: Colors.redAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Icon(
                    Icons.favorite,
                    size: 28,
                    color: Colors.tealAccent,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 400,
              width: MediaQuery.of(context).size.width * 1 / 1.2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: [
                        Colors.grey,
                        Colors.purpleAccent,
                      ])),
              child: Container(
                margin: EdgeInsets.only(top: 15),
                alignment: Alignment.center,
                child: Image(
                  image: AssetImage('images/shakira1.jpg'),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Column(
                children: [
                  Text(
                    "don't Wait Up",
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Shakira",
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 13,
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    width: 300,
                    child: Slider(
                        activeColor: Colors.redAccent,
                        inactiveColor: Colors.black87,
                        value: svalue ?? 0,
                        min: 0,
                        max: 200,
                        onChanged: (value) {
                          setState(() {
                            svalue = value;
                          });
                        }),
                  ),
                  Container(
                    child: Text(
                      '4.55',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.fast_rewind,
                    size: 28,
                    color: Colors.red,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Colors.redAccent, Colors.yellowAccent],
                      ),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.pause,
                        color: Colors.white60,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.fast_forward,
                    size: 28,
                    color: Colors.red,
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
