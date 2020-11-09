import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Neutral extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Neutral> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Neutral',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 25.0,
                color: Colors.white)),
      ),
      body: Center(
        child: Column(
          children: [
            Card(
              elevation: 10,
              child: ListTile(
                leading: Text(
                  '#1',
                  style: TextStyle(
                      color: Colors.red[300],
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
                title: Text(
                  '   Water',
                  style: TextStyle(
                      color: Colors.red[300],
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
                contentPadding:
                EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                subtitle: Text('Water is primarily used as a solvent in cosmetics and personal care products in.'),
                isThreeLine: true,
                trailing: RaisedButton(
                  child: Text('More'),
                  color: Colors.pink[100],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                      side: BorderSide(color: Colors.black)),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return Dialog(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                            child: Container(
                              height: 200,
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextField(
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintMaxLines: 3,
                                          hintText:
                                          ''),
                                    ),
                                    SizedBox(
                                      width: 320.0,
                                      child: RaisedButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text(
                                          "Ok",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        color: const Color(0xFF1BC0C5),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        });
                  },
                ),
              ),
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            Card(
              elevation: 10,
              child: ListTile(
                leading: Text(
                  '#2',
                  style: TextStyle(
                      color: Colors.red[300],
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
                title: Text(
                  '   Citric Acid',
                  style: TextStyle(
                      color: Colors.red[300],
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
                contentPadding:
                EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                subtitle: Text('Citric acid is a preservative; it also helps adjust the acid/base balance in cosmetics.'),
                isThreeLine: true,
                trailing: RaisedButton(
                    child: Text('More'),
                    color: Colors.pink[100],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                        side: BorderSide(color: Colors.black)),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Neutral()));
                    }),
              ),
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            Card(
              elevation: 10,
              child: ListTile(
                leading: Text(
                  '#3',
                  style: TextStyle(
                      color: Colors.red[300],
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
                title: Text(
                  '   Coco Glucoside',
                  style: TextStyle(
                      color: Colors.red[300],
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
                contentPadding:
                EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                subtitle: Text('Coco Glucoside is a common ingredient in all-natural shampoos. It is used in place of the toxic surfactants in traditional shampoos.'),
                isThreeLine: true,
                trailing: RaisedButton(
                    child: Text('More'),
                    color: Colors.pink[100],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                        side: BorderSide(color: Colors.black)),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Neutral()));
                    }),
              ),
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            Card(
              elevation: 10,
              child: ListTile(
                leading: Text(
                  '#4',
                  style: TextStyle(
                      color: Colors.red[300],
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
                title: Text(
                  '   Sorbic Acid',
                  style: TextStyle(
                      color: Colors.red[300],
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
                contentPadding:
                EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                subtitle: Text('Sorbic Acid kills microorganisms, or prevents or retards their growth and reproduction, and thus protect cosmetics and personal care products from spoilage.'),
                isThreeLine: true,
                trailing: RaisedButton(
                    child: Text('More'),
                    color: Colors.pink[100],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                        side: BorderSide(color: Colors.black)),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Neutral()));
                    }),
              ),
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            SizedBox(
              height: 7,
            ),
          ],
        ),
      ),
    );
  }
}