import 'package:app/screens/titles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:fl_chart/fl_chart.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
  ];
  final List<PiData> chartData = [
    PiData('Ac', 10),
    PiData('fridge', 30),
    PiData('Tv', 20),
    PiData('Fan', 40),
  ];
  final List<List<double>> charts = [
    [
      15,
      10,
      30,
      24,
      50,
    ],
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
    ],
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
      0.55,
    ]
  ];

  static final List<String> chartDropdownItems = [
    'last 5 month',
    'Last Year',
    'Last 5 year'
  ];
  String actualDropdown = chartDropdownItems[0];
  int actualChart = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                          Text('Usage', style: TextStyle(color: Colors.green)),
                          Text('\12 KWh',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 34.0)),
                        ],
                      ),
                      DropdownButton(
                          isDense: true,
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
                                      color: Colors.blue,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14.0)),
                            );
                          }).toList())
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 4.0)),
                  LineChart(
                    LineChartData(
                      minX: 0,
                      maxX: 11,
                      minY: 0,
                      maxY: 6,
                      // titlesData: LineTitles.getTitleData(),
                      // gridData: FlGridData(
                      //   show: true,
                      //   getDrawingHorizontalLine: (value) {
                      //     return FlLine(
                      //       color: const Color(0xff37434d),
                      //       strokeWidth: 1,
                      //     );
                      //   },
                      //   drawVerticalLine: true,
                      //   getDrawingVerticalLine: (value) {
                      //     return FlLine(
                      //       color: const Color(0xff37434d),
                      //       strokeWidth: 1,
                      //     );
                      //   },
                      // ),
                      // borderData: FlBorderData(
                      //   show: true,
                      //   border: Border.all(
                      //       color: const Color(0xff37434d), width: 1),
                      // ),
                      lineBarsData: [
                        LineChartBarData(
                          spots: [
                            FlSpot(0, 3),
                            FlSpot(2.6, 2),
                            FlSpot(4.9, 5),
                            FlSpot(6.8, 2.5),
                            FlSpot(8, 4),
                            FlSpot(9.5, 3),
                            FlSpot(11, 4),
                          ],
                          isCurved: true,
                          colors: gradientColors,
                          barWidth: 5,
                          // dotData: FlDotData(show: false),
                          belowBarData: BarAreaData(
                            show: true,
                            colors: gradientColors
                                .map((color) => color.withOpacity(0.3))
                                .toList(),
                          ),
                        ),
                      ],
                    ),
                  )
                  // Sparkline(
                  //   data: charts[actualChart],
                  //   lineWidth: 2.0,
                  //   lineColor: Colors.greenAccent,
                  //   pointsMode: PointsMode.all,
                  //   pointSize: 4,
                  //   fillMode: FillMode.below,
                  //   fillGradient: LinearGradient(
                  //       begin: Alignment.topCenter,
                  //       end: Alignment.bottomCenter,
                  //       colors: [Colors.amber[200], Colors.amber[400]]),
                  // )
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
                      Text('Total consumption so far',
                          style: TextStyle(color: Colors.blueAccent)),
                      Text('265 KWh',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 34.0))
                    ],
                  ),
                  Material(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(24.0),
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Icon(Icons.timeline,
                            color: Colors.white, size: 30.0),
                      )))
                ]),
          ),
        ),
        _buildTile(
          Padding(
              padding: const EdgeInsets.all(0.0),
              child: SfCircularChart(
                legend: Legend(
                    isVisible: true, overflowMode: LegendItemOverflowMode.wrap),
                series: <CircularSeries>[
                  PieSeries<PiData, String>(
                    dataSource: chartData,
                    xValueMapper: (PiData data, _) => data.device,
                    yValueMapper: (PiData data, _) => data.usage,
                    dataLabelSettings: DataLabelSettings(isVisible: true),
                    enableTooltip: true,
                  )
                ],
              )),
        ),
        _buildTile(
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Material(
                      color: Colors.amber,
                      shape: CircleBorder(),
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Icon(Icons.notifications,
                            color: Colors.white, size: 30.0),
                      )),
                  Padding(padding: EdgeInsets.only(bottom: 16.0)),
                  Text('Alerts',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 24.0)),
                  Text('All ', style: TextStyle(color: Colors.black45)),
                ]),
          ),
        ),
      ],
      staggeredTiles: [
        StaggeredTile.extent(2, 220.0),
        StaggeredTile.extent(2, 110.0),
        StaggeredTile.extent(1, 200.0),
        StaggeredTile.extent(1, 200.0),
        // StaggeredTile.extent(2, 110.0),
      ],
    ));
  }

  Widget _buildTile(Widget child, {Function() onTap}) {
    return Material(
        elevation: 14.0,
        borderRadius: BorderRadius.circular(12.0),
        shadowColor: Color(0x802196F3),
        child: InkWell(
            // Do onTap() if it isn't null, otherwise do print()
            onTap: onTap != null
                ? () => onTap()
                : () {
                    print('Not set yet');
                  },
            child: child));
  }
}

class PiData {
  PiData(this.device, this.usage);
  final String device;
  final int usage;
}
