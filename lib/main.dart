import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.blue[100],
       primaryColor: Colors.lightBlue[200],
      ),
      home: MyHomePage(title: 'For your health'),

    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _skinCare() {
    setState(() {
     print('Skin');
    });
  }
  void _makeUp() {
    setState(() {
      print('Makeup');
    });
  }
  void _food() {
    setState(() {
      print('Food');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          children: <Widget>[
            Image(
                image: AssetImage('assets/images/12-121801_red-decor-clipart-clipart-flowers-transparent-background.png')
            ),
            Column (
              mainAxisAlignment: MainAxisAlignment.end,
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
                          borderRadius: BorderRadius.circular(55),
                        ),
                        onTap: _skinCare,
                    ),
                    ),


                    Card (
                      color: Colors.blue[200],
                      child: ListTile(
                        title: Text('Makeup',
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.visible,
                            style: TextStyle(fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, fontSize: 40.0, color:Colors.white)
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(55),
                        ),
                        onTap: _makeUp,
                      ),
                    ),


                Card (
                  color: Colors.blue[200],
                  child: ListTile(
                    title: Text('Food',
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.visible,
                        style: TextStyle(fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, fontSize: 40.0, color:Colors.white)
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(55),
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
