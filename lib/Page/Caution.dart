import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Caution extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State <Caution> {
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Food',
            textAlign: TextAlign.center,
            style: TextStyle( fontStyle: FontStyle.italic, fontSize: 30.0, color:Colors.white)),
      ),
      body: Center(),
    );
  }
}