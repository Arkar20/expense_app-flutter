import 'package:expense_app/models/expense.dart';
import 'package:flutter/material.dart';

import 'package:syncfusion_flutter_charts/charts.dart';


class LineChart extends StatelessWidget {
  const LineChart({super.key,required this.expenses});

  final List<Expense> expenses;

  @override
  Widget build(BuildContext context) {
    return   SfCartesianChart(
              primaryXAxis: CategoryAxis(),
              // Chart title
              title: ChartTitle(text: 'Expenses Chart'),
              // Enable legend
              legend: Legend(isVisible: true),
              // Enable tooltip
              tooltipBehavior: TooltipBehavior(enable: true),
              series: <ChartSeries<Expense, double>>[
                LineSeries<Expense, double>(
                    dataSource: expenses,
                    dataLabelMapper: (Expense sales, _) => sales.title,
                    xValueMapper: (Expense sales, _) => sales.amount,
                    yValueMapper: (Expense sales, _) => sales.amount,
                    name: 'Sales',
                    // Enable data label
                    dataLabelSettings:const DataLabelSettings(isVisible: true))
              ]);
  }
}