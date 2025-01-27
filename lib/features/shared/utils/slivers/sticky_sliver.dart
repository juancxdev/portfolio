import 'package:flutter/material.dart';
import 'package:juancx/features/shared/utils/slivers/sticky_box_adapter.dart';

class StickySliver extends SingleChildRenderObjectWidget {
  const StickySliver({super.child, super.key});

  @override
  RenderObject createRenderObject(BuildContext context) {
    return StickyBoxAdapter();
  }
}
