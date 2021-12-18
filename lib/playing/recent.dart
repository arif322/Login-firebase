import 'package:flutter/material.dart';
import 'package:login_firebase/music.dart';
import 'package:login_firebase/pagerouteanimation.dart';

class RecentPage extends StatelessWidget {
  final String? songName;
  final String? songTitle;
  final imageCover;
  const RecentPage(
      {Key? key, this.songName, this.songTitle, required this.imageCover})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context).push(pageanimation(MusicPage()));
            },
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.circular(18),
                      image: DecorationImage(
                          image: AssetImage(imageCover), fit: BoxFit.fill),
                    ),
                  ),
                ),
                SizedBox(
                  width: 18,
                ),
                Expanded(
                  flex: 7,
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          songName!,
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          songTitle!,
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    child: PopupMenuButton(
                      itemBuilder: (context) => [
                        PopupMenuItem(
                          value: 1,
                          child: Text('play'),
                        ),
                        PopupMenuItem(
                          value: 2,
                          child: Text('pause'),
                        ),
                      ],
                      onSelected: (value) {
                        if (value == 1) {
                          print('play');
                        } else {
                          print('pause');
                        }
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
