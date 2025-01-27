import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:juancx/core/env/constants.dart';
import 'package:juancx/core/styles/spacing.dart';
import 'package:juancx/features/shared/widgets/navigation/sticky_navbar_item_widget.dart';

class StickyNavbarWidget extends StatelessWidget {
  final double spaceItems;
  final String currentPath;
  const StickyNavbarWidget({
    super.key,
    this.spaceItems = 8,
    required this.currentPath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: SpacingConstants.marginWContainer(),
      width: double.infinity,
      color: Theme.of(context).canvasColor,
      child: Wrap(
        alignment: WrapAlignment.center,
        spacing: spaceItems,
        children: [
          StickyNavbarItemWidget(
            text: "About",
            isSelected: RouterConstants.pathAbout() == currentPath,
            onPressed: () => GoRouter.of(context).go(
              RouterConstants.pathAbout(),
            ),
          ),
          StickyNavbarItemWidget(
            text: "Resumen",
            isSelected: RouterConstants.pathResumen() == currentPath,
            onPressed: () => GoRouter.of(context).go(
              RouterConstants.pathResumen(),
            ),
          ),
          StickyNavbarItemWidget(
            text: "Portfolio",
            isSelected: RouterConstants.pathPortfolio() == currentPath,
            onPressed: () => GoRouter.of(context).go(
              RouterConstants.pathPortfolio(),
            ),
          ),
        ],
      ),
    );
  }
}
