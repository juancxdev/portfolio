import 'package:flutter/material.dart';

class SpacingConstants {
  static const double _maxWContainer = 1024;
  static const double _marginWContainer = 24;

  static BoxConstraints boxMaxWContainer() =>
      BoxConstraints(maxWidth: _maxWContainer);

  static EdgeInsets marginWContainer() =>
      EdgeInsets.symmetric(horizontal: _marginWContainer);
  static EdgeInsets marginWHContainer() =>
      EdgeInsets.symmetric(horizontal: _marginWContainer, vertical: 48);

  static double getOnlyMarginWContainer() => _marginWContainer * 2;

  static WidgetStatePropertyAll<Size> boxHButton() =>
      WidgetStatePropertyAll(Size.fromHeight(48));
  static WidgetStatePropertyAll<RoundedRectangleBorder> boxBorders(
          bool isFixedHeigth) =>
      WidgetStatePropertyAll(RoundedRectangleBorder(
          borderRadius: isFixedHeigth
              ? BorderRadius.circular(6)
              : BorderRadius.circular(4)));
  static EdgeInsets paddingWHButton() =>
      EdgeInsets.symmetric(horizontal: 16, vertical: 8);
}
