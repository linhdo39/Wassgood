import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'SkinCarePage.dart';
import 'MakeUpPage.dart';
import 'FoodPage.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.blue[100],
       primaryColor: Colors.lightBlue[200],
      ),
      home: MyHomePage(),

    );
  }
}

class MyHomePage extends StatefulWidget {
    @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void _skinCare() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SkinCarePage(),
      ),
    );
  }
  void _makeUp() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MakeUpPage(),
      ),
    );
  }
  void _food() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FoodPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
            'WASSGOOD',
            textAlign: TextAlign.center,
            style: TextStyle(fontStyle: FontStyle.italic, fontSize: 30.0, color:Colors.white)
        ),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image(
            image: AssetImage( 'assets/images/people.png'),
            ),

            Column (
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget> [
                  Card (
                    color: Colors.blue[200],
                      child: ListTile(
                      title: Text('Skincare',
                       textAlign: TextAlign.center,
                        overflow: TextOverflow.visible,
                        style: TextStyle(fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, fontSize: 40.0, color:Colors.white)
                                ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        onTap: _skinCare,
                    ),
                    ),

                Divider(),

                    Card (
                      color: Colors.blue[200],
                      child: ListTile(
                        title: Text('Makeup',
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.visible,
                            style: TextStyle(fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, fontSize: 40.0, color:Colors.white)
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        onTap: _makeUp,
                      ),
                    ),

                Divider(),

                Card (
                  color: Colors.blue[200],
                  child: ListTile(
                    title: Text('Food',
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.visible,
                        style: TextStyle(fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, fontSize: 40.0, color:Colors.white)
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    onTap: _food,
                  ),
                ),
                ],),
          ],
        ),
      ),
    );
  }
}
