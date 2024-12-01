import 'package:flutter/material.dart';
import 'package:juancx/core/env/constants.dart';
import 'package:juancx/core/styles/spacing.dart';
import 'package:juancx/features/shared/widgets/navigation/navbar_item_widget.dart';

class NavbarWidget extends StatelessWidget {
  final double spaceItems;
  final String currentPath;
  const NavbarWidget(
      {super.key, this.spaceItems = 24, required this.currentPath});

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: SpacingConstants.boxMaxWContainer(),
        margin: SpacingConstants.marginWContainer(),
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              child: Text(
                "Juancx",
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            Expanded(child: SizedBox()),
            Wrap(
              spacing: spaceItems,
              children: [
                NavbarItemWidget(
                    text: "Home",
                    isActive: RouterConstants.getPath("Home") == currentPath),
                NavbarItemWidget(
                    text: "About",
                    isActive: RouterConstants.getPath("About") == currentPath),
                NavbarItemWidget(
                    text: "Portfolio",
                    isActive:
                        RouterConstants.getPath("Portfolio") == currentPath),
                NavbarItemWidget(
                    text: "Contact",
                    isActive:
                        RouterConstants.getPath("Contact") == currentPath),
              ],
            )
          ],
        ));
  }
}
