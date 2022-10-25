import 'dart:ui';

import 'package:intl/intl.dart';

numberFormatDecimal(var angka) {
  if (angka >= 1000) {
    var formatter = NumberFormat("#,###,000");
    return formatter.format(angka);
  } else {
    return angka.toString();
  }
}

Color convertColor(String value) {
  value = value.replaceAll('#', '');
  return Color(int.parse(value, radix: 16) + 0xFF000000);
}
