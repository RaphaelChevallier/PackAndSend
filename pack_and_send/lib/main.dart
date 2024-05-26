import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:pack_and_send/pages/home.dart';

import 'themes/dark_mode.dart';
import 'themes/light_mode.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return PlatformProvider(
      builder: (context) => PlatformTheme(
        materialLightTheme: lightMode,
        cupertinoLightTheme: lightModeCupertino,
        materialDarkTheme: darkMode,
        cupertinoDarkTheme: darkModeCupertino,
        builder: (context) => const PlatformApp(
          localizationsDelegates: <LocalizationsDelegate<dynamic>>[
            DefaultMaterialLocalizations.delegate,
            DefaultWidgetsLocalizations.delegate,
            DefaultCupertinoLocalizations.delegate,
          ],
          title: 'PackAndSend',
          home: HomePage(),
        ),
      ),
    );
  }
}
