import 'package:flutter/material.dart';

class SonglistPage extends StatelessWidget {
  final imageOne;
  final songtitle;
  final downloadTitle;
  final imageTwo;
  final songtitleTwo;
  final downloadTitleTwo;
  const SonglistPage(
      {Key? key,
      this.imageOne,
      this.songtitle,
      this.downloadTitle,
      this.imageTwo,
      this.downloadTitleTwo,
      this.songtitleTwo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                height: 150,
                width: MediaQuery.of(context).size.width * 1 / 2.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.teal,
                  image: DecorationImage(
                    image: imageOne,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 1 / 2.3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      songtitle,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Colors.black45,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 1 / 2.3,
                      child: Row(
                        children: [
                          Icon(
                            Icons.arrow_downward_outlined,
                            color: Colors.redAccent,
                            size: 13,
                          ),
                          Text(
                            downloadTitle,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Column(
            children: [
              Container(
                height: 150,
                width: MediaQuery.of(context).size.width * 1 / 2.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.teal,
                  image:
                      DecorationImage(image: imageTwo, fit: BoxFit.fitHeight),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 1 / 2.3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      songtitleTwo,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Colors.black45,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 1 / 2.3,
                      child: Row(
                        children: [
                          Icon(
                            Icons.arrow_downward_outlined,
                            color: Colors.redAccent,
                            size: 13,
                          ),
                          Text(
                            downloadTitleTwo,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
