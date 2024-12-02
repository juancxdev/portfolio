import 'package:flutter/material.dart';
import 'package:juancx/core/styles/spacing.dart';
import 'package:juancx/features/home/presentation/screens/main_section/main_section_desktop.dart';
import 'package:juancx/features/home/presentation/screens/main_section/main_section_mobile.dart';
import 'package:juancx/features/home/presentation/screens/main_section/main_section_tablet.dart';
import 'package:juancx/features/shared/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: SpacingConstants.boxMaxWContainer(),
      margin: SpacingConstants.marginWHContainer(),
      child: Wrap(
        direction: Axis.vertical,
        children: [
          ResponsiveWidget(
              mobile: MainSectionMobile(),
              tablet: MainSectionTablet(),
              desktop: MainSectionDesktop()),
          Padding(
            padding: EdgeInsets.all(20),
            child: DefaultButtonWidget(function: () {}),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: DefaultButtonWidget(
              function: () {},
              staticHeigth: true,
            ),
          )
        ],
      ),
    );
  }
}
