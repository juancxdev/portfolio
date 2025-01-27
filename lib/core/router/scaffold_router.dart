import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:juancx/core/styles/spacing.dart';
import 'package:juancx/features/shared/utils/responsive/responsive_util.dart';
import 'package:juancx/features/shared/utils/slivers/sticky_sliver.dart';
import 'package:juancx/features/shared/widgets/navigation/sticky_navbar_widget.dart';
import 'package:juancx/features/shared/widgets/widgets.dart';

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
                padding: EdgeInsets.symmetric(vertical: 48, horizontal: 24),
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
                    const SizedBox(height: 8),
                    Text(
                      'Senior Web Engineer • Creative Developer • International Speaker',
                      style: TextStyle(
                        color: const Color(0xFFADADAD),
                        fontSize: 16,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Ex-Google',
                              style: TextStyle(color: const Color(0xFF787878)),
                            ),
                          ],
                        ),
                        const SizedBox(width: 16),
                        Row(
                          children: [
                            Text(
                              'Developer Relations',
                              style: TextStyle(color: const Color(0xFF787878)),
                            ),
                          ],
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
                height: 300,
                color: Colors.red,
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                height: 300,
                color: Colors.red,
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                height: 300,
                color: Colors.red,
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                height: 300,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}



/*Container(
                constraints: SpacingConstants.boxMaxWContainer(),
                margin: SpacingConstants.marginWHContainer(),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 128,
                      height: 128,
                      margin: EdgeInsets.symmetric(
                        vertical: 48,
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
                      'Jhey Tompkins',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Senior Web Engineer • Creative Developer • International Speaker',
                      style: TextStyle(
                        color: const Color(0xFFADADAD),
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Ex-Google',
                              style: TextStyle(color: const Color(0xFF787878)),
                            ),
                          ],
                        ),
                        const SizedBox(width: 16),
                        Row(
                          children: [
                            Text(
                              'Developer Relations',
                              style: TextStyle(color: const Color(0xFF787878)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              )*/