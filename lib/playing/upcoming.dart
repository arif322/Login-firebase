import 'package:flutter/material.dart';

import 'package:login_firebase/playing/playinglist.dart';
import 'package:login_firebase/playing/recent.dart';

class PlayedPage extends StatefulWidget {
  static const String path = 'PlayedPage';
  const PlayedPage({Key? key}) : super(key: key);

  @override
  _PlayedPageState createState() => _PlayedPageState();
}

class _PlayedPageState extends State<PlayedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white38,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.only(top: 12, left: 12, right: 12),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Colors.white70,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Hello',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 8, right: 8),
                                  child: Text(
                                    'Arif Shumon',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 22,
                            child: CircleAvatar(
                              backgroundImage: AssetImage(
                                'images/arif.jpg',
                              ),
                              radius: 30,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 250,
                            height: 40,
                            child: TextField(
                                decoration: InputDecoration(
                              hintText: 'Search music',
                              hintStyle: TextStyle(
                                color: Colors.black26,
                              ),
                              fillColor: Colors.white,
                              filled: true,
                              prefixIcon: Icon(Icons.search),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(18),
                                borderSide:
                                    BorderSide(width: 0, color: Colors.white),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18),
                                  borderSide: BorderSide(
                                      width: 0, color: Colors.white)),
                            )),
                          ),
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white70,
                              border: Border.all(width: 0),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: PopupMenuButton(
                                icon: Icon(Icons.album),
                                itemBuilder: (context) => [
                                  PopupMenuItem(
                                    value: 1,
                                    child: Text(
                                      'solo song',
                                      style: TextStyle(color: Colors.blueGrey),
                                    ),
                                  ),
                                  PopupMenuItem(
                                    value: 2,
                                    child: Text(
                                      'Hindi song',
                                      style: TextStyle(color: Colors.blueGrey),
                                    ),
                                  ),
                                  PopupMenuItem(
                                    value: 3,
                                    child: Text(
                                      'Bangla song',
                                      style: TextStyle(color: Colors.blueGrey),
                                    ),
                                  ),
                                ],
                                onSelected: (value) {
                                  if (value == 1) {
                                    print("solo song");
                                  } else if (value == 2) {
                                    print('hindi song');
                                  } else {
                                    print('bangla song');
                                  }
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Upcomming Songs',
                            style: TextStyle(
                                color: Colors.redAccent,
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: AlbumPage(
                                imageName: 'images/shakira.jpg',
                                songName: 'Waka Waka',
                                songTitle: 'Shakira ',
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            InkWell(
                              onTap: () {},
                              child: AlbumPage(
                                imageName: 'images/lambofgo.jpg',
                                songName: 'pure vibes',
                                songTitle: 'Lamb of God',
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            InkWell(
                              onTap: () {},
                              child: AlbumPage(
                                imageName: 'images/linkinpark.jpg',
                                songName: 'Numb',
                                songTitle: 'Linkin Park',
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Recently Played",
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            child: Column(
                              children: [
                                RecentPage(
                                  imageCover: 'images/Bekhayali.jpg',
                                  songName: 'Bekhayali',
                                  songTitle: 'Kabir Singh',
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                RecentPage(
                                  imageCover: 'images/lier.jpg',
                                  songName: 'Lier',
                                  songTitle: 'Sandra N.',
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                RecentPage(
                                  imageCover: 'images/rabta.jpg',
                                  songName: 'Rabta',
                                  songTitle: 'Rabta Rabta',
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                RecentPage(
                                  imageCover: 'images/AgarTumMilJao.jpg',
                                  songName: 'Agar Tum Mil Jao',
                                  songTitle: 'Zaher',
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                RecentPage(
                                  imageCover: 'images/phirbhi.jpg',
                                  songName: 'Phir Bhi',
                                  songTitle: 'Phir Bhi',
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
