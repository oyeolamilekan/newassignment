import 'package:bezier_chart/bezier_chart.dart';
import 'package:flutter/material.dart';
import 'package:ui_assignment_flutter/utils.dart';

class BeizerChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height / 2,
        width: MediaQuery.of(context).size.width,
        child: BezierChart(
          bezierChartScale: BezierChartScale.CUSTOM,
          xAxisCustomValues: const [0, 3, 10, 15, 20, 25, 30, 35],
          series: const [
            BezierLine(
              label: "Bitcoin",
              lineColor: Color(0xff30bc96),
              lineStrokeWidth: 6.0,
              data: const [
                DataPoint<double>(value: 10, xAxis: 0),
                DataPoint<double>(value: 130, xAxis: 5),
                DataPoint<double>(value: 50, xAxis: 10),
                DataPoint<double>(value: 150, xAxis: 15),
                DataPoint<double>(value: 75, xAxis: 20),
                DataPoint<double>(value: 0, xAxis: 25),
                DataPoint<double>(value: 5, xAxis: 30),
                DataPoint<double>(value: 45, xAxis: 35),
              ],
            ),
            BezierLine(
              lineColor: Color(0xffff2d55),
              lineStrokeWidth: 6.0,
              label: "Etherum",
              data: [
                DataPoint<double>(value: 15, xAxis: 0),
                DataPoint<double>(value: 50, xAxis: 5),
                DataPoint<double>(value: 30, xAxis: 10),
                DataPoint<double>(value: 130, xAxis: 15),
                DataPoint<double>(value: 90, xAxis: 20),
                DataPoint<double>(value: 30, xAxis: 25),
                DataPoint<double>(value: 10, xAxis: 30),
                DataPoint<double>(value: 30, xAxis: 35),
              ],
            ),
          ],
          config: BezierChartConfig(
            verticalIndicatorStrokeWidth: 2.0,
            verticalIndicatorColor: Colors.black12,
            showVerticalIndicator: true,
            contentWidth: MediaQuery.of(context).size.width * 2,
          ),
        ),
      ),
    );
  }
}
