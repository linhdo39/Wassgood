import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'Good.dart';
import 'Caution.dart';
import 'Neutral.dart';
class SkinCarePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<SkinCarePage> {
  void good() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Good(),
        ),
      );
  }
  void neutral(){
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Neutral(),
        ),
      );
  }

  void caution(){
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Caution(),
        ),
      );
    }

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Skin Care',
            textAlign: TextAlign.center,
            style: TextStyle( fontStyle: FontStyle.italic, fontSize: 30.0, color:Colors.white)),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget> [
          Container (
            child: ListTile(
              title: Text('Good',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.visible,
                  style: TextStyle(fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, fontSize: 40.0, color:Colors.white)
              ),
              onTap: good,
            ),
          ),
          Divider(
            thickness: CupertinoScrollbar.defaultThickness,
            color: Colors.black26,
          ),

          Container (
            child: ListTile(
              title: Text('Neutral',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.visible,
                  style: TextStyle(fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, fontSize: 40.0, color:Colors.white)
              ),
              onTap: neutral,
            ),
          ),
          Divider(
            thickness: CupertinoScrollbar.defaultThickness,
            color: Colors.black26,
          ),
          Container (
            child: ListTile(
              title: Text('Use with Caution',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.visible,
                  style: TextStyle(fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, fontSize: 40.0, color:Colors.white)
              ),
              onTap: caution,
            ),
          ),
        ],
      ),
      ),
    );
  }
}
