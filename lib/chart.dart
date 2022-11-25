import 'package:charts_flutter/flutter.dart' as charts;
import 'series.dart';
import 'package:flutter/material.dart';

class BitcoinPriceChart extends StatelessWidget {
  final List<BitcoinPriceSeries> data;
  BitcoinPriceChart({required this.data});
  @override
  Widget build(BuildContext context) {
    List<charts.Series<BitcoinPriceSeries, String>> series = [
      charts.Series(
          id: "Price",
          data: data,
          domainFn: (BitcoinPriceSeries series, _) => series.month,
          measureFn: (BitcoinPriceSeries series, _) => series.price,
          colorFn: (BitcoinPriceSeries series, _) => series.barColor)
    ];
    return Container(
      height: 400,
      padding: EdgeInsets.all(20),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Text(
                "Average Happiness Index vs Your Index",
              ),
              Expanded(
                  child: (charts.BarChart(
                series,
                animate: true,
                barGroupingType: charts.BarGroupingType.grouped,
                defaultRenderer: charts.BarRendererConfig(
                    cornerStrategy: const charts.ConstCornerStrategy(30)),
                domainAxis: charts.OrdinalAxisSpec(
                    renderSpec: charts.SmallTickRendererSpec(
                  minimumPaddingBetweenLabelsPx: 0,
                  labelAnchor: charts.TickLabelAnchor.centered,
                  labelStyle: charts.TextStyleSpec(
                    fontSize: 10,
                    color: charts.MaterialPalette.black,
                  ),
                  labelRotation: 60,
                )),
              )))
            ],
          ),
        ),
      ),
    );
  }
}
