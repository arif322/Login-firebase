import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_firebase/homepage.dart';
import 'package:login_firebase/pagerouteanimation.dart';
import 'package:login_firebase/pages/signup.dart';
import 'package:login_firebase/widget/Gesturebutton.dart';
import 'package:login_firebase/widget/Textpage.dart';

import 'package:lottie/lottie.dart';

class LogInPage extends StatefulWidget {
  static const String path = "LogInPage";
  const LogInPage({Key? key}) : super(key: key);

  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white30.withOpacity(0.3),
            // width: MediaQuery.of(context).size.height,
            // height: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Container(
                  child: Center(
                    child: Lottie.asset(
                      "images/login.json",
                      // height: 200,
                      // width: 200,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "welcome to login Page",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                      color: Colors.cyan),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Please Log in your Page",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Column(
                    children: [
                      Textpage(
                        controller: emailController,
                        textType: true,
                        obsecure: false,
                        hint: "Email",
                        icons: Icon(Icons.person),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Column(
                    children: [
                      Textpage(
                          controller: passwordController,
                          textType: false,
                          obsecure: true,
                          hint: "password",
                          icons: Icon(Icons.lock),
                          icon: Icon(Icons.remove_red_eye)),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  height: 50,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: Colors.cyan.withOpacity(0.5),
                        blurRadius: 15,
                        offset: Offset(0, 3))
                  ]),
                  child: ElevatedButton(
                    onPressed: () async {
                      try {
                        UserCredential userCredential = await FirebaseAuth
                            .instance
                            .signInWithEmailAndPassword(
                                email: emailController.text,
                                password: passwordController.text);

                        print(userCredential.user);

                        if (userCredential.user!.email != null) {
                          Navigator.of(context).push(pageanimation(Homepage()));
                        }
                      } catch (e) {
                        print(e);
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.cyan.withOpacity(0.5),
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Text(
                      "Log In",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          letterSpacing: 2),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureButtonPage(
                      images: AssetImage("images/facebook.jpg"),
                      onTap: () {},
                    ),
                    GestureButtonPage(
                      images: AssetImage("images/google.jpg"),
                      onTap: () {},
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account ?",
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpPage()),
                          );
                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.red,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
