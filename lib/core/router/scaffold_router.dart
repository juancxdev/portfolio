import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:juancx/core/styles/spacing.dart';
import 'package:juancx/features/shared/utils/responsive/responsive_util.dart';
import 'package:juancx/features/shared/utils/slivers/sticky_sliver.dart';
import 'package:juancx/features/shared/widgets/navigation/sticky_navbar_widget.dart';
import 'package:juancx/features/shared/widgets/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class ScaffoldRouter extends StatelessWidget {
  const ScaffoldRouter({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final screenSize = getScreenSize(context);

    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      body: SizedBox.expand(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Container(
                margin: EdgeInsets.only(top: 80),
                padding: SpacingConstants.marginWHContainerMobile(),
                child: Column(
                  children: [
                    Container(
                      width: 128,
                      height: 128,
                      margin: EdgeInsets.only(
                        bottom: 32,
                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://media.sproutsocial.com/uploads/2022/06/profile-picture.jpeg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Text(
                      'Juan Campos',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 8, bottom: 16),
                      child: Text(
                        'Backend Developer • Mobile Developer',
                        style: TextStyle(
                          color: const Color(0xFFADADAD),
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Wrap(
                      alignment: WrapAlignment.center,
                      spacing: 16,
                      runSpacing: 8,
                      children: [
                        SocialIconButtonWidget(
                          iconPath: 'icons/icon-linkedin.svg',
                          onTap: () => launchUrl(
                            Uri.parse('https://www.linkedin.com/in/juancx/'),
                            mode: LaunchMode.externalApplication,
                          ),
                        ),
                        SocialIconButtonWidget(
                          iconPath: 'icons/icon-github.svg',
                          onTap: () => launchUrl(
                            Uri.parse('https://github.com/juancxdev'),
                            mode: LaunchMode.externalApplication,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            StickySliver(
              child: StickyNavbarWidget(
                currentPath: GoRouterState.of(context).uri.path,
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                alignment: Alignment.center,
                child: Container(
                  constraints: SpacingConstants.boxMaxWContainer(),
                  padding:
                      EdgeInsets.only(top: 24, left: 24, right: 24, bottom: 80),
                  child: child,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
