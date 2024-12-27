import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:juancx/features/shared/utils/responsive/responsive_util.dart';
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              NavbarWidget(
                currentPath: GoRouterState.of(context).uri.path,
                isMobile: screenSize != ScreenSize.desktop,
              ),
              child
            ],
          ),
        ),
      ),
      endDrawer: screenSize != ScreenSize.desktop
          ? Drawer(
              child: ListView(
                children: [
                  DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                    ),
                    child: Text('App Name'),
                  ),
                  ListTile(
                    title: Text('Home'),
                    onTap: () {
                      Navigator.pop(context); // Cierra el drawer
                      // Navegar a home
                    },
                  ),
                  ListTile(
                    title: Text('About'),
                    onTap: () {
                      Navigator.pop(context);
                      // Navegar a about
                    },
                  ),
                ],
              ),
            )
          : null,
    );
  }
}
