import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';



void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(title: Text('Line Chart'), centerTitle: true, backgroundColor: Colors.black12,),
      body:
      SingleChildScrollView(
        child:
        Container(
          color: Colors.black12,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: LineChartWidget(),
        ),
      ),
    );
  }
}







class Titles{
  static getTitleData() => FlTitlesData(
    show: true,
    bottomTitles: SideTitles(
      showTitles: true,
      reservedSize: 35,
      getTextStyles: (value) => const TextStyle( fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey),
      getTitles: (value) {
        switch (value.toInt()){
          case 2:
            return '2020';
          case 5:
            return '2021';
          case 8:
            return '2022';
  }
  return '';
  },
      margin: 5,
    ),
    leftTitles: SideTitles(
      showTitles: true,
      getTextStyles: (value) => const TextStyle(
        color: Colors.grey,
        fontWeight: FontWeight.bold,fontSize: 13,
      ),
      getTitles: (value){
        switch (value.toInt()){
          case 10000:
            return '10k';
          case 20000:
            return '20k';
          case 30000:
            return '30k';
          case 40000:
            return '40k';
          case 50000:
            return '50k';
          case 60000:
            return '60k';
          case 70000:
            return '70k';
        }
        return '';
      },
      reservedSize:  35,
      margin: 5
    )
  );
}










class LineChartWidget extends StatelessWidget {
  final List<Color> gradiantColors = [
    Colors.redAccent,
    Colors.orangeAccent
  ];

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        minX: 0,
        maxX: 11,
        minY: 0,
        maxY: 70000,
        titlesData: Titles.getTitleData(),
        gridData: FlGridData(
          show: true,
          getDrawingHorizontalLine: (value){
            return FlLine(
              color: Colors.grey[800],
              strokeWidth: 1
            );
          },
        ),
        borderData: FlBorderData(
          show: true,
          border: Border.all(color: Colors.grey[800], width: 2)
        ),
        lineBarsData: [
          LineChartBarData(
            spots: [
              FlSpot(0,30000),
              FlSpot(2.5,10000),
              FlSpot(4,50000),
              FlSpot(6,43000),
              FlSpot(8,40000),
              FlSpot(9,30000),
              FlSpot(11,38000),
            ],
            isCurved: true,
            colors: gradiantColors,
            barWidth: 3,
            belowBarData: BarAreaData(
              show: true,
              colors: gradiantColors.map((color) => color.withOpacity(.4)).toList()
            )

          )
        ]

      )
    );
  }
}














