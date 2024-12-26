import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:juancx/features/shared/widgets/widgets.dart';

class ScaffoldRouter extends StatelessWidget {
  const ScaffoldRouter({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final canvasBody = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: Theme.of(context).canvasColor,
        body: SingleChildScrollView(
          child: SizedBox(
            width: canvasBody.width,
            // decoration: BoxDecoration(
            //   image: DecorationImage(image: image)
            // ),
            child: Column(
              children: [
                NavbarWidget(
                  currentPath: GoRouterState.of(context).uri.path,
                ),
                child
              ],
            ),
          ),
        ));
  }
}
