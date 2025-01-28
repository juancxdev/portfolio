import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoingWidget extends StatelessWidget {
  final String icon;
  const DoingWidget({super.key, this.icon = 'mobile'});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 360),
      padding: EdgeInsets.all(16),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            "icons/icon-$icon-section.svg",
            width: 48,
            height: 48,
            colorFilter: ColorFilter.mode(
              Theme.of(context).primaryColor,
              BlendMode.srcIn,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Develop Mobile Apps',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 8),
                Text(
                  'Professional development of applications for Android and ios.',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
