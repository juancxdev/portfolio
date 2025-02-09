import 'package:flutter/material.dart';
import 'package:juancx/core/styles/spacing.dart';
import 'package:juancx/features/shared/widgets/widgets.dart';

class PortfolioSectionWidget extends StatelessWidget {
  const PortfolioSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: SpacingConstants.marginBottomHSection(),
          color: Theme.of(context).canvasColor,
          child: Column(
            children: [
              TitleH1Section(
                text: "Portfolio",
              ),
              Wrap(
                spacing: 48,
                children: [
                  Container(
                    constraints: BoxConstraints(
                        minWidth: 200, maxWidth: 320, minHeight: 200),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Theme.of(context).cardColor,
                        borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(4),
                            child: Image.asset("images/projects/onlyone.jpg"))
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
