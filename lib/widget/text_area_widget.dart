import 'package:flutter/material.dart';
import 'package:label_scan/Page/Caution.dart';
import 'package:label_scan/Page/Good.dart';
import 'package:label_scan/Page/Neutral.dart';

class TextAreaWidget extends StatelessWidget {
  final String text;

  const TextAreaWidget({
    @required this.text,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://i.pinimg.com/564x/42/92/3c/42923cdb4629164f40b19613d5a68edf.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10, top: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Card(
                    elevation: 10,
                    child: ListTile(
                      leading: Image.asset("assets/icon/smile.png"),
                      title: Text(
                        '   Good',
                        style: TextStyle(
                            color: Colors.red[300],
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic),
                      ),
                      contentPadding:
                      EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                      subtitle: Text(''),
                      isThreeLine: true,
                      trailing: RaisedButton(
                          child: Text('More'),
                          color: Colors.pink[100],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                              side: BorderSide(color: Colors.black)),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Good()));
                          }),
                    ),
                    color: Colors.blue[100],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(55),
                    ),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Card(
                    elevation: 10,
                    child: ListTile(
                      leading: Image.asset("assets/icon/sad.png"),
                      title: Text(
                        '   Neutral',
                        style: TextStyle(
                            color: Colors.red[300],
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic),
                      ),
                      contentPadding:
                      EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                      subtitle: Text(''),
                      isThreeLine: true,
                      trailing: RaisedButton(
                          child: Text('More'),
                          color: Colors.pink[100],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                              side: BorderSide(color: Colors.black)),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Neutral()));
                          }),
                    ),
                    color: Colors.blue[100],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(55),
                    ),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Card(
                    elevation: 10,
                    child: ListTile(
                      leading: Image.asset(
                        "assets/icon/devil.png",
                      ),
                      title: Text(
                        '  Caution',
                        style: TextStyle(
                            color: Colors.red[300],
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic),
                      ),
                      contentPadding:
                      EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                      subtitle: Text(''),
                      isThreeLine: true,
                      trailing: RaisedButton(
                          child: Text('More'),
                          color: Colors.pink[100],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                              side: BorderSide(color: Colors.black)),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Caution()));
                          }),
                    ),
                    color: Colors.blue[100],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(55),
                    ),
                  ),
                ],
              ),
            ),
            // Row(
            //   children: [
            //     Expanded(
            //       child: Container(
            //         height: 100,
            //         decoration: BoxDecoration(border: Border.all()),
            //         padding: EdgeInsets.all(8),
            //         alignment: Alignment.center,
            //         child: SelectableText(
            //           text.isEmpty ? 'Scan an Image to get text' : text,
            //           textAlign: TextAlign.center,
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}