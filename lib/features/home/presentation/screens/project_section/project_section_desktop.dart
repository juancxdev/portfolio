import 'package:flutter/material.dart';

import 'package:juancx/core/styles/spacing.dart';
import 'package:juancx/features/shared/widgets/widgets.dart';

class ProjectSectionDesktop extends StatelessWidget {
  const ProjectSectionDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      constraints: SpacingConstants.boxMaxWContainer(),
      width: size.width - SpacingConstants.getOnlyMarginWContainer(),
      child: Column(children: [
        TitleSectionWidget(
          title: "Projects",
        ),
        Container(
          width: double.infinity,
          child: Wrap(
            direction: Axis.horizontal,
            spacing: 16,
            children: [],
          ),
        ),
      ]),
    );
  }
}
