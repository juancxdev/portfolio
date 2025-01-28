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
                "A passionate Flutter developer with strong expertise in cross-platform apps, REST APIs, UI/UX, widgets, and state management solutions. Proven track record in delivering cutting-edge solutions, including API integration, third-party libraries, and performance optimization. Adept at debugging to ensure high-quality, responsive apps and An agile collaborator committed to staying current with industry trends.\n\n"
                "If you're seeking a skilled Flutter developer to breathe life into your project and exceed your expectations, I am here to collaborate and create magic together. Reach out, and let's transform your vision into a reality!",
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
