import 'package:flutter/material.dart';

class SpacingConstants {
  static const double _maxWContainer = 896;
  static const double _marginWContainer = 64;
  static const double _marginWContainerMobile = 24;

  static BoxConstraints boxMaxWContainer() =>
      BoxConstraints(maxWidth: _maxWContainer);

  static EdgeInsets marginWContainer() =>
      EdgeInsets.symmetric(horizontal: _marginWContainer);
  static EdgeInsets marginWHContainer() =>
      EdgeInsets.symmetric(horizontal: _marginWContainer, vertical: 48);

  static EdgeInsets marginWContainerMobile() =>
      EdgeInsets.symmetric(horizontal: _marginWContainerMobile);
  static EdgeInsets marginWHContainerMobile() =>
      EdgeInsets.symmetric(horizontal: _marginWContainerMobile, vertical: 48);

  static EdgeInsets marginRightSeparation() => EdgeInsets.only(right: 16);

  static EdgeInsets marginQuoteMainContainer() =>
      EdgeInsets.symmetric(horizontal: _marginWContainerMobile, vertical: 96);

  static EdgeInsets marginWSpacing() => EdgeInsets.symmetric(horizontal: 12);

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
