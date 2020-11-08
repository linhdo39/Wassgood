import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Good extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Good> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Good',
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
                  'Sodium laureth sulfate',
                  style: TextStyle(
                      color: Colors.red[300],
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
                contentPadding:
                EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                subtitle: Text(
                    'The Food and Drug Administration (FDA) regards SLS as safe as a food additive. '),
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
                              height: 450,
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image(
                                      image: AssetImage('assets/result/RESULT.png'),
                                    ),
                                    TextField(
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintMaxLines: 10,
                                          hintText:
                                          'International Journal of Toxicology (the most recent assessment), found that it’s not harmful if used briefly and rinsed from the skin, as with shampoos and soaps.The report says that products that stay on the skin longer shouldn’t exceed 1 percent concentration of SLS. '),
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
                  'Dimethicone',
                  style: TextStyle(
                      color: Colors.red[300],
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
                contentPadding:
                EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                subtitle: Text(
                    'It helps to temporarily smooth fine lines and wrinkles, functions as an emollient'),
                isThreeLine: true,
                trailing: RaisedButton(
                    child: Text('More'),
                    color: Colors.pink[100],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                        side: BorderSide(color: Colors.black)),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Good()));
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
                  'Zinc Pyrithione ',
                  style: TextStyle(
                      color: Colors.red[300],
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
                contentPadding:
                EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                subtitle: Text(
                    'It is used to control seborrheic dermatitis and for treating skin irritation and dandruff. '),
                isThreeLine: true,
                trailing: RaisedButton(
                    child: Text('More'),
                    color: Colors.pink[100],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                        side: BorderSide(color: Colors.black)),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Good()));
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
                  'Hydroxypropyl Guar',
                  style: TextStyle(
                      color: Colors.red[300],
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
                contentPadding:
                EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                subtitle: Text(
                    'Determined safe for use in cosmetics, subject to concentration or use limitations - Distinction between safe conc in leave-on and rinse-off'),
                isThreeLine: true,
                trailing: RaisedButton(
                    child: Text('More'),
                    color: Colors.pink[100],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                        side: BorderSide(color: Colors.black)),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Good()));
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