import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray600 = fromHex('#737373');

  static Color black9004c = fromHex('#4c000000');

  static Color gray50Ef = fromHex('#eff9f9f9');

  static Color black9000a = fromHex('#0a000000');

  static Color gray500 = fromHex('#a3a3a3');

  static Color blueA400 = fromHex('#3478f6');

  static Color black9006c = fromHex('#6c000000');

  static Color gray900 = fromHex('#171717');

  static Color gray80099 = fromHex('#993c3c43');

  static Color gray50 = fromHex('#f7f8fa');

  static Color black90023 = fromHex('#23000000');

  static Color black900 = fromHex('#000000');

  static Color bluegray400 = fromHex('#888888');

  static Color lightBlueA700 = fromHex('#007aff');

  static Color gray8002d = fromHex('#2d3c3c43');

  static Color gray6001e = fromHex('#1e767680');

  static Color gray8004c = fromHex('#4c3c3c43');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
