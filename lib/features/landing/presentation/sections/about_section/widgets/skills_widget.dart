import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

final _listSkills = [
  "git",
  "flutter",
  "kotlin",
  "swift",
  "golang",
  "postgresql"
];

class SkillsWidget extends StatelessWidget {
  const SkillsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      child: Wrap(
        spacing: 16,
        runSpacing: 8,
        children: _listSkills
            .map(
              (index) => Container(
                width: 110,
                height: 110,
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: SvgPicture.asset(
                    "icons/icon-skill-$index.svg",
                    height: 64,
                    width: 64,
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
