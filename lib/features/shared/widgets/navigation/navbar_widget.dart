import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:juancx/core/env/constants.dart';
import 'package:juancx/core/styles/spacing.dart';
import 'package:juancx/features/shared/utils/responsive/responsive_util.dart';
import 'package:juancx/features/shared/widgets/navigation/navbar_item_widget.dart';

class NavbarWidget extends StatelessWidget {
  final double spaceItems;
  final String currentPath;
  final bool isMobile;
  const NavbarWidget(
      {super.key,
      this.spaceItems = 24,
      required this.currentPath,
      required this.isMobile});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: SpacingConstants.boxMaxWContainer(),
      margin: SpacingConstants.marginWContainer(),
      height: 80,
      width: double.infinity,
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
          !isMobile
              ? Wrap(
                  spacing: spaceItems,
                  children: [
                    NavbarItemWidget(
                        text: "Home",
                        isActive:
                            RouterConstants.getPath("Home") == currentPath),
                    NavbarItemWidget(
                        text: "About",
                        isActive:
                            RouterConstants.getPath("About") == currentPath),
                    NavbarItemWidget(
                        text: "Portfolio",
                        isActive: RouterConstants.getPath("Portfolio") ==
                            currentPath),
                    NavbarItemWidget(
                        text: "Contact",
                        isActive:
                            RouterConstants.getPath("Contact") == currentPath),
                  ],
                )
              : GestureDetector(
                  onScaleUpdate: (details) => debugPrint(details.toString()),
                  onTap: () => Scaffold.of(context).openEndDrawer(),
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: SvgPicture.asset(
                      "icons/icon-menu-navbar.svg",
                      colorFilter: ColorFilter.mode(
                          Theme.of(context).primaryColor, BlendMode.srcIn),
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
