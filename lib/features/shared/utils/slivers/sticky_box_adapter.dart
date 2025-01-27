import 'package:flutter/rendering.dart';

class StickyBoxAdapter extends RenderSliverSingleBoxAdapter {
  StickyBoxAdapter({super.child});

  @override
  void performLayout() {
    geometry = SliverGeometry.zero;
    child?.layout(constraints.asBoxConstraints(), parentUsesSize: true);

    double childExtend = child?.size.height ?? 0;

    geometry = SliverGeometry(
      paintExtent: childExtend,
      maxPaintExtent: childExtend,
      paintOrigin: constraints.scrollOffset,
    );

    setChildParentData(child!, constraints, geometry!);
  }
}
