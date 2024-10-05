import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:greenshift/features/home/domain/enitities/carbon_dioxide.dart';
import 'package:greenshift/theme/app_colors.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class CO2BarChart extends StatelessWidget {
  const CO2BarChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Carbon Dioxide Chart',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
        ),
        Text(
          'Jan 2024 - Jan 2025',
          style: TextStyle(fontSize: 12, color: Colors.black45),
        ),
        SizedBox(
          height: 12,
        ),
        Container(
            height: 200,
            child: SfCartesianChart(
              primaryXAxis: CategoryAxis(),
              series: <ColumnSeries<CarbonDioxide, String>>[
                ColumnSeries(
                  dataSource: const [
                    CarbonDioxide(month: 'Jan', emission: 32),
                    CarbonDioxide(month: 'Feb', emission: 16),
                    CarbonDioxide(month: 'Mar', emission: 18),
                    CarbonDioxide(month: 'Apr', emission: 24),
                    CarbonDioxide(month: 'May', emission: 20),
                    CarbonDioxide(month: 'Jun', emission: 18),
                    CarbonDioxide(month: 'Jul', emission: 15),
                    CarbonDioxide(month: 'Aug', emission: 30),
                    CarbonDioxide(month: 'Sep', emission: 38),
                    CarbonDioxide(month: 'Oct', emission: 29),
                    CarbonDioxide(month: 'Nov', emission: 21),
                    CarbonDioxide(month: 'Dec', emission: 21),
                    CarbonDioxide(month: 'Jan 25', emission: 21),
                    CarbonDioxide(month: 'Feb 25', emission: 16),
                    CarbonDioxide(month: 'Mar 25', emission: 28),
                  ],
                  xValueMapper: (datum, index) => datum.month,
                  yValueMapper: (datum, index) => datum.emission,
                  color: Theme.of(context).colorScheme.primary,
                )
              ],
            )),
      ],
    );
  }
}
