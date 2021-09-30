import 'package:app/components/fading.dart';
import 'package:app/data/local.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CityPage extends StatelessWidget {
  const CityPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Data> data = [];

    for (var dataJson in datasJson) {
      data.add(Data.fromJson(dataJson));
    }
    data.sort((b, a) => a.y.compareTo(b.y));
    List<Data> local = data;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Fading(
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "City Leaderboard\nKochi",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                Image.asset(
                  'assets/images/prize.png',
                  height: 120,
                  width: 200,
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "August 2021",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w300),
                  ),
                  Text(
                    "Points  ",
                    style: TextStyle(
                        color: Colors.blue[900],
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            ListView.builder(
                itemCount: local.length,
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
                        leading: CircleAvatar(
                          radius: 25.0,
                          backgroundImage: AssetImage(
                              'assets/images/${((index + 1) % 10) == 0 ? 1 : (index + 1) % 10}.jpg'),
                        ),
                        title: Text(
                          "${index + 1}. " + local[index].consumerid,
                          style: TextStyle(
                              fontSize: index < 3 ? 20 : 18,
                              fontWeight: index < 3
                                  ? FontWeight.w500
                                  : FontWeight.normal),
                        ),
                        subtitle: Text(
                          local[index].tu.toString() + " KWh",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.normal),
                        ),
                        trailing: Text(
                          local[index].y.toString(),
                          style: TextStyle(
                              color: Colors.blue[900],
                              fontSize: 20,
                              fontWeight: index < 3
                                  ? FontWeight.w500
                                  : FontWeight.normal),
                        ),
                      ),
                    ),
                  ));
                }),
          ],
        ),
      )),
    );
  }
}
