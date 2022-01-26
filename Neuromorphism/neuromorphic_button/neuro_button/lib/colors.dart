import 'package:flutter/material.dart';

Color bgColorLightTop = const Color(0xffd7dfe4);
Color bgColorLightButton = const Color(0xff7a7886);
Color bgColorDarkTop = const Color(0xff62696e);
Color bgColorDarkButton = const Color(0xff2a1d29);

Color textColorDark = const Color(0xff2a1d29);
Color textColorLight = const Color(0xffd7dfe4);

Color themeColorLight = const Color(0xff00b0aa);
Color themeColorDark = const Color(0xff005855);

Gradient buttonGradient = LinearGradient(
  colors: [
    Colors.black.withOpacity(0.7),
    const Color(0xff091f05),
  ],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
);

Gradient beatGradient = LinearGradient(
  colors: [
    themeColorDark,
    themeColorLight,
    const Color(0xff091f05),
  ],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);
