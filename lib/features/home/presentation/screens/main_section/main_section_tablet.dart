import 'package:flutter/material.dart';
import 'package:juancx/core/styles/spacing.dart';
import 'package:juancx/features/shared/widgets/widgets.dart';

class MainSectionTablet extends StatelessWidget {
  const MainSectionTablet({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      constraints: SpacingConstants.boxMaxWContainer(),
      width: size.width - SpacingConstants.getOnlyMarginWContainer(),
      child: Row(
        children: [
          Expanded(
            flex: 7,
            child: SizedBox(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 24, bottom: 12),
                  child: RichText(
                    text: TextSpan(
                      text: "Juan Campos, ",
                      style: Theme.of(context).textTheme.headlineMedium,
                      children: [
                        TextSpan(
                            text: "Software Engineer",
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium!
                                .copyWith(
                                    color: Theme.of(context).primaryColor))
                      ],
                    ),
                  ),
                ),
                Text(
                  "He crafts responsive websites where technologies meet creativity",
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: Theme.of(context).textTheme.labelSmall!.color),
                ),
                Padding(
                    padding: EdgeInsets.symmetric(vertical: 24),
                    child: DefaultButtonWidget(
                      function: () {},
                      text: "Contact me!!",
                      staticHeigth: true,
                    )),
              ],
            )),
          ),
          Expanded(
            flex: 5,
            child: Container(
              height: 234,
              color: Colors.blue,
              child: Text("data"),
            ),
          ),
        ],
      ),
    );
  }
}
