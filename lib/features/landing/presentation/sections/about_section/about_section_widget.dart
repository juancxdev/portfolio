import 'package:flutter/material.dart';
import 'package:juancx/core/styles/spacing.dart';
import 'package:juancx/features/landing/presentation/sections/about_section/widgets/doing_widget.dart';
import 'package:juancx/features/shared/widgets/widgets.dart';

class AboutSectionWidget extends StatelessWidget {
  const AboutSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: SpacingConstants.marginBottomHSection(),
          child: Column(
            children: [
              TitleH1Section(
                text: "About me",
              ),
              Text(
                "Software Engineer with expertise in Golang, PostgreSQL, and mobile development using Kotlin and Swift. Proven track record in delivering cutting-edge solutions, including API development, database optimization, and cross-platform mobile applications. Experienced in remote work environments, demonstrating adaptability and collaboration skills across multiple teams and projects.\n\n"
                "Specializing in backend and mobile development, I build solutions that merge technical excellence with practical implementation.",
                textAlign: TextAlign.justify,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),
        ),
        Container(
          padding: SpacingConstants.marginBottomHSection(),
          child: Column(
            children: [
              TitleH2Section(
                text: "What am I doing?",
              ),
              Wrap(
                spacing: 48,
                children: [DoingWidget(), DoingWidget()],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
