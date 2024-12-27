import 'package:flutter/material.dart';
import 'package:juancx/core/styles/spacing.dart';

class TitleSectionWidget extends StatelessWidget {
  final String title;
  final VoidCallback? navigation;
  const TitleSectionWidget({super.key, this.title = "Title", this.navigation});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Wrap(
        spacing: 16,
        direction: Axis.horizontal,
        children: [
          Row(
            children: [
              Text(
                '#',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 32,
                  fontFamily: 'Fira Code',
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                width: 6,
              ),
              Text(
                title.toLowerCase(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontFamily: 'Fira Code',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Container(
            height: 2,
            width: double.infinity,
            color: Theme.of(context).primaryColor,
            margin: SpacingConstants.marginWContainer(),
            constraints: BoxConstraints(maxWidth: 222),
          ),
          navigation != null
              ? GestureDetector(
                  onScaleUpdate: (details) => debugPrint(details.toString()),
                  onTap: navigation,
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Text(
                      'View all ~~>',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Fira Code',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
