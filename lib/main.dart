import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        builBackground(),
        SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 70),
                  CircleAvatar(
                    radius: 36.0,
                    backgroundColor: Color(0xff00B761).withOpacity(0.25),
                    child: Icon(
                      Icons.home_outlined,
                      color: Color(0xff00B761),
                      size: 36,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Let's log you in",
                    style: TextStyle(color: Colors.white, fontSize: 22.0),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Welcome back You've been missed!",
                    style: TextStyle(color: Colors.white38, fontSize: 16.0),
                  ),
                  SizedBox(
                    height: 34,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton.icon(
                          icon: Icon(Icons.bubble_chart),
                          onPressed: () {},
                          label: Container(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 16.0),
                              child: Text("Google"),
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Color(0xffEA4335),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0))),
                        ),
                      ),
                      SizedBox(width: 16.0),
                      Expanded(
                        child: ElevatedButton.icon(
                          icon: Icon(Icons.facebook),
                          label: Container(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 16.0),
                              child: Text("Facebook"),
                            ),
                          ),
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              primary: Color(0xff1877F2),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0))),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xff25283A),
                      hintText: "Username",
                      hintStyle: TextStyle(
                          color: Colors.white60, fontWeight: FontWeight.w500),
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.white60,
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: BorderSide.none),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: BorderSide.none),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xff25283A),
                      hintText: "Email Address",
                      hintStyle: TextStyle(
                          color: Colors.white60, fontWeight: FontWeight.w500),
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.white60,
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: BorderSide.none),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: BorderSide.none),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xff25283A),
                      hintText: "Password",
                      hintStyle: TextStyle(
                          color: Colors.white60, fontWeight: FontWeight.w500),
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.white60,
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: BorderSide.none),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: BorderSide.none),
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Container(
                            margin: EdgeInsets.symmetric(vertical: 18.0),
                            child: Text("Sign Up"),
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Color(0xff00B761),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(14))),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ],
    ));
  }
}

Widget builBackground() {
  return Stack(
    children: [
      Container(
        width: double.infinity,
        height: double.infinity,
        color: Color(0xff1E1C2A),
      ),
      Positioned(
        top: -50,
        left: 86,
        child: Transform.rotate(
          angle: pi / 6,
          child: Container(
            width: 70,
            height: 150,
            decoration: BoxDecoration(
              color: Color(0xff00B761),
              borderRadius: BorderRadius.circular(18.0),
            ),
          ),
        ),
      )
    ],
  );
}
