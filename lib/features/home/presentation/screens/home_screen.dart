import 'package:flutter/material.dart';
import 'package:juancx/core/styles/spacing.dart';
import 'package:juancx/features/home/presentation/screens/main_section/main_section_desktop.dart';
import 'package:juancx/features/home/presentation/screens/main_section/main_section_mobile.dart';
import 'package:juancx/features/home/presentation/screens/main_section/main_section_tablet.dart';
import 'package:juancx/features/home/presentation/screens/project_section/project_section_desktop.dart';
import 'package:juancx/features/home/presentation/widgets/widgets.dart';
import 'package:juancx/features/shared/utils/responsive/responsive_util.dart';
import 'package:juancx/features/shared/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = getScreenSize(context);

    return Container(
      constraints: SpacingConstants.boxMaxWContainer(),
      margin: SpacingConstants.marginWHContainer(),
      width: double.infinity,
      child: Column(
        children: [
          MainSectionDesktop(),
          ProjectSectionDesktop(),
        ],
      ),
    );
  }
}
