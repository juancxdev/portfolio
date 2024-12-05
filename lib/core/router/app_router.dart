import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import 'package:juancx/core/env/constants.dart';
import 'package:juancx/core/router/scaffold_router.dart';
import 'package:juancx/features/home/home.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

final List<String> listItemsNavigation = RouterConstants.getKeys();

final GoRouter appRouter = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: RouterConstants.pathHome(),
  debugLogDiagnostics: true,
  routes: <RouteBase>[
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (BuildContext context, GoRouterState state, Widget child) {
        return ScaffoldRouter(child: child);
      },
      routes: <RouteBase>[
        GoRoute(
          name: RouterConstants.nameHome(),
          path: RouterConstants.pathHome(),
          builder: (BuildContext context, GoRouterState state) {
            return const HomeScreen();
          },
        ),

        GoRoute(
          name: RouterConstants.nameAbout(),
          path: RouterConstants.pathAbout(),
          builder: (BuildContext context, GoRouterState state) {
            return const SizedBox();
          },
        ),

        GoRoute(
          name: RouterConstants.namePortfolio(),
          path: RouterConstants.pathPortfolio(),
          builder: (BuildContext context, GoRouterState state) {
            return const SizedBox();
          },
        ),

        GoRoute(
          name: RouterConstants.nameContact(),
          path: RouterConstants.pathContact(),
          builder: (BuildContext context, GoRouterState state) {
            return const SizedBox();
          },
        ),

        // GoRoute(
        //   name: RouterConstants.nameSlides(),
        //   path: RouterConstants().pathSlides(),
        //   builder: (BuildContext context, GoRouterState state) {
        //     return const ScreenC();
        //   },
        //   routes: <RouteBase>[
        //     // The details screen to display stacked on the inner Navigator.
        //     // This will cover screen C but not the application shell.
        //     GoRoute(
        //       // The name of this route used to determine the title in the ShellRoute.
        //       name: 'c.details',
        //       path: 'details',
        //       builder: (BuildContext context, GoRouterState state) {
        //         return const DetailsScreen(label: 'C');
        //       },
        //     ),
        //   ],
        // ),
      ],
    ),
  ],
);
