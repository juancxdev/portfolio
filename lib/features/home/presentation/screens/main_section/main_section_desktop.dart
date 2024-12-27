import 'package:flutter/material.dart';

import 'package:juancx/core/styles/spacing.dart';

import 'package:juancx/features/home/presentation/widgets/widgets.dart';
import 'package:juancx/features/shared/widgets/widgets.dart';

class MainSectionDesktop extends StatelessWidget {
  const MainSectionDesktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DetailWidget(),
                  Text(
                    "He crafts responsive websites where technologies meet creativity",
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: Theme.of(context).textTheme.labelSmall!.color),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 24),
                    child: Wrap(
                      spacing: 16,
                      runSpacing: 16,
                      children: [
                        OutlineButtonWidget(
                          function: () {},
                          text: "See projects",
                          staticHeigth: true,
                        ),
                        DefaultButtonWidget(
                          function: () {},
                          text: "Contact me",
                          staticHeigth: true,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Spacer(
              flex: 1,
            ),
            Expanded(
              flex: 5,
              child: StateMachineMuscot(),
            ),
          ],
        ),
        Container(
          margin: SpacingConstants.marginQuoteMainContainer(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              PhraseWidget(
                text: "With great power comes great electricity bill",
              ),
              Padding(
                  padding: SpacingConstants.marginWContainerMobile(),
                  child: SelectableText("- Dr. Who"))
            ],
          ),
        ),
      ],
    );
  }
}
