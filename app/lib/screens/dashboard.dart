import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Dashboard extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<Dashboard> {
  final List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
  ];

  final List<PiData> chartData = [
    PiData('Ac', 100, Colors.blue[50]),
    PiData('Fridge', 60, Colors.blue[200]),
    PiData('Tv', 30, Colors.blue[400]),
    PiData('Fan', 54, Colors.blue[700]),
  ];
  final List<List<double>> charts = [
    [0, 350, 450, 250, 320, 244],
    [0.0, 0.8, 0.7, 0.76, 0.85, 0.8, 1.2, 1.3, 1.35, 1.1, 1.5, 1.2],
    [
      0.0,
      0.3,
      0.7,
      0.6,
      0.55,
      0.8,
      1.2,
      1.3,
      1.35,
      0.9,
      1.5,
      1.7,
      1.8,
      1.7,
      1.2,
      0.8,
      1.9,
      2.0,
      2.2,
      1.9,
      2.2,
      2.1,
      2.0,
      2.3,
      2.4,
      2.45,
      2.6,
      3.6,
      2.6,
      2.7,
      2.9,
      2.8,
      3.4,
      0.0,
      0.3,
      0.7,
      0.6,
      0.55
    ]
  ];

  static final List<String> chartDropdownItems = [
    'Last 5 month',
    'Last Year',
    'Last 5 year'
  ];
  String actualDropdown = chartDropdownItems[0];
  int actualChart = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: StaggeredGridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 12.0,
          mainAxisSpacing: 12.0,
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          children: <Widget>[
            _buildTile(
              Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('244 KWh',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 34.0)),
                              Text('Your Consumption',
                                  style: TextStyle(color: Colors.black54)),
                            ],
                          ),
                          DropdownButton(
                              isDense: true,
                              underline: SizedBox(),
                              value: actualDropdown,
                              onChanged: (String value) => setState(() {
                                    actualDropdown = value;
                                    actualChart = chartDropdownItems
                                        .indexOf(value); // Refresh the chart
                                  }),
                              items: chartDropdownItems.map((String title) {
                                return DropdownMenuItem(
                                  value: title,
                                  child: Text(title,
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14.0)),
                                );
                              }).toList())
                        ],
                      ),
                      SizedBox(height: 30),
                      Sparkline(
                        data: charts[actualChart],
                        lineWidth: 2.0,
                        lineColor: Colors.greenAccent,
                        pointsMode: PointsMode.all,
                        pointSize: 7,
                        fillMode: FillMode.below,
                        fillGradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Colors.green[200], Colors.green[400]]),
                      )
                    ],
                  )),
            ),
            _buildTile(
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('1527 KWh',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 34.0)),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Total Consumption So Far (5 Month)',
                              style: TextStyle(color: Colors.black54)),
                        ],
                      ),
                      Material(
                          color: Colors.blue[500],
                          borderRadius: BorderRadius.circular(8.0),
                          child: Center(
                              child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Icon(Icons.timeline,
                                color: Colors.white, size: 40.0),
                          )))
                    ]),
              ),
            ),
            _buildTile(
              Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: SfCircularChart(
                    legend: Legend(
                        isVisible: true,
                        overflowMode: LegendItemOverflowMode.wrap),
                    series: <CircularSeries>[
                      PieSeries<PiData, String>(
                        dataSource: chartData,
                        xValueMapper: (PiData data, _) => data.device,
                        yValueMapper: (PiData data, _) => data.usage,
                        pointColorMapper: (PiData data, _) => data.color,
                        dataLabelSettings: DataLabelSettings(isVisible: true),
                        enableTooltip: true,
                      )
                    ],
                  )),
            ),
            _buildTile(
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Material(
                            color: Colors.green,
                            shape: CircleBorder(),
                            child: Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Icon(Icons.assessment_sharp,
                                  color: Colors.white, size: 40.0),
                            )),
                      ),
                      Padding(padding: EdgeInsets.only(bottom: 16.0)),
                      Padding(
                        padding: const EdgeInsets.only(top: 13),
                        child: RichText(
                          text: TextSpan(
                            text: 'Your Consumption is ',
                            style: DefaultTextStyle.of(context).style,
                            children: <TextSpan>[
                              TextSpan(
                                  text: '26%',
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18)),
                              TextSpan(text: ' lower than the previous month'),
                            ],
                          ),
                        ),
                      ),
                    ]),
              ),
            ),
            _buildTile(
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('327 KWh',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 34.0)),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Your Average Monthly Consumption Rate',
                              style: TextStyle(color: Colors.black54)),
                        ],
                      ),
                      Material(
                          color: Color.fromRGBO(92, 116, 255, 1),
                          borderRadius: BorderRadius.circular(8.0),
                          child: Center(
                              child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Icon(Icons.bar_chart,
                                color: Colors.white, size: 40.0),
                          )))
                    ]),
              ),
            ),
          ],
          staggeredTiles: [
            StaggeredTile.extent(2, 235.0),
            StaggeredTile.extent(2, 110.0),
            StaggeredTile.extent(1, 200.0),
            StaggeredTile.extent(1, 200.0),
            StaggeredTile.extent(2, 110.0),
            // StaggeredTile.extent(2, 110.0),
          ],
        ));
  }

  Widget _buildTile(Widget child) {
    return Material(
        elevation: 14.0,
        borderRadius: BorderRadius.circular(12.0),
        shadowColor: Color(0x802196F3),
        child: child);
  }
}

class PiData {
  PiData(this.device, this.usage, this.color);
  final String device;
  final int usage;
  final Color color;
}
