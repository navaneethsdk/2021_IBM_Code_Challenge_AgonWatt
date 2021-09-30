import 'dart:math';

import 'package:app/fading.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LocalityPage extends StatelessWidget {
  const LocalityPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Random random = new Random();

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/prize.png',
              height: 150,
              width: double.infinity,
            ),
            ListView.builder(
                itemCount: 11,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return Fading(Card(
                    elevation: 2.0,
                    margin: new EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 6.0),
                    child: Container(
                      decoration:
                          BoxDecoration(color: Color.fromRGBO(64, 75, 96, .03)),
                      padding: EdgeInsets.all(5),
                      child: ListTile(
                          leading:
                              //  Row(
                              // children: [
                              //   Text(
                              //     "${index + 1}  ",
                              //     style: TextStyle(
                              //       color: Colors.black,
                              //       fontSize: 20,
                              //     ),
                              //   ),
                              CircleAvatar(
                            radius: 25.0,
                            backgroundImage: AssetImage(
                                'assets/images/${((index + 1) % 10) == 0 ? 1 : (index + 1) % 10}.jpg'),
                          ),
                          //   ],
                          // ),
                          trailing: Text(
                            "₹ " + random.nextInt(1000).toString() + "/-",
                            style: TextStyle(
                                color: Colors.blue[900],
                                fontSize: 20,
                                fontWeight: FontWeight.normal),
                          ),
                          title: Text(" ${index + 1}")),
                    ),
                  ));
                }),
          ],
        ),
      ),
    );
  }
}
