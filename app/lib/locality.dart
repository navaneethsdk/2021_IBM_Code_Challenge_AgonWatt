import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LocalityPage extends StatelessWidget {
  const LocalityPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Random random = new Random();

    return ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            elevation: 5.0,
            margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
            child: Container(
              decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .03)),
              padding: EdgeInsets.all(5),
              child: ListTile(
                  leading: CircleAvatar(
                    radius: 30.0,
                    child: Image.asset('assets/images/1.jpg'),
                  ),
                  trailing: Text(
                    "₹ " + random.nextInt(1000).toString(),
                    style: TextStyle(
                        color: Colors.blue[900],
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  title: Text("List item $index")),
            ),
          );
        });
  }
}
