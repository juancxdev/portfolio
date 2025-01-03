import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:juancx/core/router/app_router.dart';
import 'package:juancx/core/theme/app_theme.dart';
import 'package:juancx/firebase_options.dart';
import 'package:url_strategy/url_strategy.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "Juancx's Website",
      routerConfig: appRouter,
      themeMode: ThemeMode.dark,
      theme: GlobalThemData.darkTheme,
    );
  }
}
