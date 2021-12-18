import 'package:flutter/material.dart';

class AlbumPage extends StatelessWidget {
  final imageName;
  final String? songName;
  final String? songTitle;
  const AlbumPage({Key? key, this.imageName, this.songName, this.songTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width * 1 / 1.1,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: Colors.black38,
              image: DecorationImage(
                  image: AssetImage(imageName), fit: BoxFit.fill),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            child: Column(
              children: [
                Text(
                  songName!,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  songTitle!,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
