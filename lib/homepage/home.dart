import 'package:flutter/material.dart';
import 'package:login_firebase/homepage/songlist.dart';

class HomePages extends StatefulWidget {
  const HomePages({Key? key}) : super(key: key);

  @override
  _HomePagesState createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white38,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: EdgeInsets.only(left: 12, right: 15, top: 10),
              child: Column(children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.white70),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Welcome",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8, right: 8),
                              child: Text(
                                "Arif Shumon",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white12,
                        radius: 22,
                        child: CircleAvatar(
                          backgroundImage: AssetImage("images/arif.jpg"),
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
                        height: 40,
                        width: 250,
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Search Music",
                              hintStyle: TextStyle(
                                color: Colors.black26,
                              ),
                              filled: true,
                              fillColor: Colors.white,
                              prefixIcon: Icon(
                                Icons.search,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(18),
                                borderSide:
                                    BorderSide(width: 0, color: Colors.white),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18),
                                  borderSide: BorderSide(
                                      width: 0, color: Colors.white))),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.white70,
                          border: Border.all(width: 0),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Center(
                          child: PopupMenuButton(
                            icon: Icon(Icons.album),
                            itemBuilder: (context) => [
                              PopupMenuItem(
                                value: 1,
                                child: Text(
                                  "Solo Song",
                                  style: TextStyle(color: Colors.blueGrey),
                                ),
                              ),
                              PopupMenuItem(
                                value: 2,
                                child: Text(
                                  "hindi Song",
                                  style: TextStyle(color: Colors.blueGrey),
                                ),
                              ),
                              PopupMenuItem(
                                value: 3,
                                child: Text(
                                  "Bangla Song",
                                  style: TextStyle(color: Colors.blueGrey),
                                ),
                              )
                            ],
                            onSelected: (value) {
                              if (value == 1) {
                                print("solo song");
                              } else if (value == 2) {
                                print("hindi album");
                              } else {
                                print("bangla album");
                              }
                            },
                            offset: Offset(10.0, 20.0),
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
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    gradient: LinearGradient(
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                      colors: [Colors.white30, Colors.blueAccent],
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 7,
                        child: Container(
                          margin: EdgeInsets.only(top: 15, right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "40%",
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "OFF",
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Get Unlimited Download",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 18,
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  'Premium Now',
                                  style: TextStyle(
                                      color: Colors.black45, fontSize: 18),
                                ),
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.yellow, elevation: 8),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Container(
                          margin: EdgeInsets.only(top: 31, right: 5),
                          child: Image.asset("images/ann.png"),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Most Popular",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.teal, elevation: 8),
                        onPressed: () {},
                        child: Text("View All"),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SonglistPage(
                  imageOne: AssetImage("images/Bekhayali.jpg"),
                  songtitle: "Bekhayali",
                  downloadTitle: '3.5M Downloads',
                  imageTwo: AssetImage('images/phirbhi.jpg'),
                  songtitleTwo: "Phir Bhi",
                  downloadTitleTwo: "3.2M Downloads",
                ),
                SizedBox(
                  height: 10,
                ),
                SonglistPage(
                  imageOne: AssetImage('images/AgarTumMilJao.jpg'),
                  songtitle: 'Agar Tum Mil Jao',
                  downloadTitle: '4.0M Downloads',
                  imageTwo: AssetImage('images/shakira.jpg'),
                  songtitleTwo: 'Waka Waka ',
                  downloadTitleTwo: '5M Downloads',
                ),
                SizedBox(
                  height: 10,
                ),
                SonglistPage(
                  imageOne: AssetImage('images/lier.jpg'),
                  songtitle: 'LIer',
                  downloadTitle: '4.0M Downloads',
                  imageTwo: AssetImage('images/lambofgo.jpg'),
                  songtitleTwo: 'Lamb of God ',
                  downloadTitleTwo: '6M Downloads',
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
