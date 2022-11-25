import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/foundation.dart';

class BitcoinPriceSeries {
  final String month;
  final double price;
  final charts.Color barColor;
  BitcoinPriceSeries(
      {required this.month, required this.price, required this.barColor});
}
