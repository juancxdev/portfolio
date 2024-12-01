import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:juancx/core/env/constants.dart';

class NavbarItemWidget extends StatelessWidget {
  final String text;
  final bool isActive;
  const NavbarItemWidget(
      {super.key, this.isActive = false, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onScaleUpdate: (details) => debugPrint(details.toString()),
      onTap: () => GoRouter.of(context).go(RouterConstants.getPath(text)),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: SizedBox(
          child: RichText(
            text: TextSpan(
              text: text,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: isActive
                        ? Theme.of(context).textTheme.titleLarge!.color
                        : Theme.of(context).textTheme.labelSmall!.color,
                  ),
              children: [
                TextSpan(
                  text: " #",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Theme.of(context).primaryColor,
                      ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
