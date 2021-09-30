import 'package:app/components/fading.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var rewards = [
      ["August", 145.0],
      ["July", 33.4],
      ["June", 137.3],
      ["May", 84.2],
      ["April", 139.0],
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black38),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
                color: Colors.white,
                child: Container(
                  width: double.infinity,
                  height: 300.0,
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                            "https://www.rd.com/wp-content/uploads/2017/09/01-shutterstock_476340928-Irina-Bg.jpg",
                          ),
                          radius: 50.0,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "Alice James",
                          style: TextStyle(
                            fontSize: 22.0,
                            color: Colors.black,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "5682925414355",
                            style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Card(
                          margin: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 5.0),
                          clipBehavior: Clip.antiAlias,
                          color: Colors.white,
                          elevation: 5.0,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 22.0),
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: Column(
                                    children: <Widget>[
                                      Text(
                                        "543",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25.0,
                                          color: Colors.blue[700],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      Text(
                                        "Total Coins",
                                        style: TextStyle(
                                          fontSize: 18.0,
                                          color: Colors.blue[700],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: <Widget>[
                                      Text(
                                        "130",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25.0,
                                          color: Colors.blue[700],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      Text(
                                        "City Rank",
                                        style: TextStyle(
                                          fontSize: 18.0,
                                          color: Colors.blue[700],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Instructions to use the Credits",
                    style: TextStyle(
                        color: Colors.black54,
                        fontStyle: FontStyle.normal,
                        fontSize: 18.0),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "1. You can actually redeem the credits by clicking the below button\n\n2. To redeem the credits you have to try to find items that can be bought with the coins that you have .",
                    style: TextStyle(
                        color: Colors.black54,
                        fontStyle: FontStyle.normal,
                        fontSize: 16.0),
                  ),
                ],
              ),
            ),
            Container(
              width: 300.00,
              child: Ink(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                      colors: [Colors.blue[500], Colors.blue[800]]),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Container(
                  constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
                  alignment: Alignment.center,
                  child: Text(
                    "Redeem Credit",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 26.0,
                        fontWeight: FontWeight.w300),
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 30.0, horizontal: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      " Credits and Rewards",
                      style: TextStyle(
                          color: Colors.black54,
                          fontStyle: FontStyle.normal,
                          fontSize: 18.0),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    ListView.builder(
                        itemCount: 5,
                        shrinkWrap: true,
                        physics: ScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return Fading(Card(
                            elevation: 2.0,
                            margin: new EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 6.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(64, 75, 96, .03)),
                              padding: EdgeInsets.all(5),
                              child: ListTile(
                                title: RichText(
                                  text: TextSpan(
                                    style: DefaultTextStyle.of(context).style,
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: "${index + 1}. ",
                                        style: TextStyle(fontSize: 19),
                                      ),
                                      TextSpan(
                                          text: "${rewards[index][0]} ",
                                          style: TextStyle(
                                              fontSize: index < 3 ? 16 : 14,
                                              fontWeight: index < 3
                                                  ? FontWeight.w500
                                                  : FontWeight.normal)),
                                    ],
                                  ),
                                ),
                                trailing: Text(
                                  "${rewards[index][1]} ",
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
