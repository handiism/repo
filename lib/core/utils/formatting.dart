import 'dart:ui';

Color hexToColor(String hex) {
  hex = hex.replaceAll('#', '');
  return Color(int.parse(hex, radix: 16) + 0xFF000000);
}
