import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Page/homePage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Splash(),
  ));
}

class Splash extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 2),
          () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MyApp(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
         constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                      "assets/images/appdesign.jpg"),
                  fit: BoxFit.cover)),
      ),
    );
  }
}