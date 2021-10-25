import 'package:intl/intl.dart';

class Format {
  static final currency = NumberFormat.currency(locale: "en_US", symbol: "\$");
  static final compactCurrency =
      NumberFormat.compactCurrency(locale: "en_US", symbol: "\$");

  static final _percent =
      NumberFormat.decimalPercentPattern(locale: "en_US", decimalDigits: 2);

  static String toPercent(double value) => _percent.format(value / 100);

  static Amount toAmount(double value) {
    final split = currency.format(value).split(".");
    return Amount(whole: split[0], fractional: split[1]);
  }
}

class Amount {
  final String whole;
  final String fractional;

  Amount({required this.whole, required this.fractional});
}
