import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testtask/services/counter_cubit.dart';


class Inspection extends StatelessWidget {
  Inspection({super.key});

  // List files = Directory("assets/").listSync();
  final List<double> flexex = [1.0, -3.0, 2.0, -10.0, -20.0, -39.0, 6.0];
  final List<double> raduln = [-2.0, 3.0, 10.0, 40.0, -3.0, 5.0, -4.0];

  @override
  Widget build(BuildContext context) {
    final counterCubit = context.read<CounterCubit>();

    return  Scaffold(
      appBar: AppBar(
        title: Text('Inspection'),
        centerTitle: true,
        elevation: 0,
      ),
      body:  Container(
        margin: EdgeInsets.all(30.0),
        child: Column(
          children: [
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      'Swing ',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold
                      ),
                  ),
                  BlocBuilder<CounterCubit, int>(
                    builder: (context, count) {
                        return Text(
                            '$count',
                            style: Theme.of(context).textTheme.headlineMedium,
                        );
                    },
                  ),
                  InkWell(
                    onTap: () {
                      print('delete current swing');
                    },
                    child: Icon(
                      Icons.delete,
                      size: 30,
                    ),
                  ),
                ],
              ),
            Text('Swing graph'),
            Container(
              height: MediaQuery.of(context).size.height / 2,
              child: Padding(
                padding: const EdgeInsets.all(1.0),
                child: LineChart(
                  LineChartData(
                    titlesData: FlTitlesData(
                      leftTitles: SideTitles(showTitles: true),
                      bottomTitles: SideTitles(showTitles: false),
                    ),
                    gridData: FlGridData(show: false),
                    borderData: FlBorderData(show: true),
                    lineBarsData: [
                      LineChartBarData(
                        spots: flexex
                            .asMap()
                            .entries
                            .map((entry) => FlSpot(entry.key.toDouble(), entry.value))
                            .toList(),
                        isCurved: true,
                        barWidth: 2,
                        colors: [Colors.orange],
                      ),
                      LineChartBarData(
                        spots: raduln
                            .asMap()
                            .entries
                            .map((entry) => FlSpot(entry.key.toDouble(), entry.value))
                            .toList(),
                        isCurved: true,
                        barWidth: 2,
                        colors: [Colors.green],
                      ),
                    ],
                    minY: [
                      ...flexex,
                      ...raduln,
                    ].reduce((a, b) => a < b ? a : b),
                    maxY: [
                      ...flexex,
                      ...raduln,
                    ].reduce((a, b) => a > b ? a : b),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    counterCubit.decrement();
                    print('previous');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.arrow_back,
                        size: 30,
                      ),
                      Text(
                        'Previous',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    counterCubit.increment();
                    print('next');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                          'Next',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold
                      )),
                      Icon(
                        Icons.arrow_forward,
                        size: 30,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


