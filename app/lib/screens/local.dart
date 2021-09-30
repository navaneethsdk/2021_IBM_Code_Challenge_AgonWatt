import 'package:app/components/fading.dart';
import 'package:app/data/local.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LocalPage extends StatefulWidget {
  const LocalPage({Key key}) : super(key: key);

  @override
  _LocalPageState createState() => _LocalPageState();
}

class _LocalPageState extends State<LocalPage> {
  String dropdownvalue = '5';
  var items = ['1', '5', '10', '15'];
  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    List<Data> data = [];

    for (var dataJson in datasJson) {
      data.add(Data.fromJson(dataJson));
    }
    List<Data> local;
    int intddv = int.parse(dropdownvalue);
    intddv == 1
        ? local = data.sublist(0, 3)
        : intddv == 5
            ? local = data.sublist(0, 6)
            : intddv == 10
                ? local = data.sublist(0, 9)
                : local = data;

    local.sort((b, a) => a.y.compareTo(b.y));
    var avg = local.map((m) => m.tu).reduce((a, b) => a + b) / local.length;

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
                            "Local Leaderboard",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                          DropdownButton(
                            underline: SizedBox(),
                            value: dropdownvalue,
                            icon: Icon(Icons.keyboard_arrow_down),
                            items: items.map((String items) {
                              return DropdownMenuItem(
                                  value: items, child: Text(items + " Km "));
                            }).toList(),
                            onChanged: (String newValue) {
                              setState(() {
                                dropdownvalue = newValue;
                              });
                            },
                          ),
                          Card(
                            elevation: 4.0,
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.fromLTRB(16, 16, 16, 5),
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    avg.round().toString() + " KWh",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 25,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(10.0),
                                  alignment: Alignment.centerLeft,
                                  child: Text("Average Consumption"),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Image.asset(
                      'assets/images/local.png',
                      height: 230,
                      width: 22g0,
                      fit: BoxFit.fill,
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
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(64, 75, 96, .03)),
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
          ),
        ));
  }
}
