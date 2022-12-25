import 'package:flutter/material.dart';


import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:heroes_of_computer_science/screens/settingPage.dart';

import 'screens/hero_list.dart';

void main() => runApp(MyApp()
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateTitle: (context) {
        return AppLocalizations.of(context)!.appTitle;
      },

      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],

      supportedLocales: const [
        Locale('en', ''),
        Locale('ar', ''),
      ],

      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      // remove home: HeroList(...)

      initialRoute: '/',

      routes: {
        '/': (context) {
          return HeroList(title: AppLocalizations.of(context)!.appTitle);
        },
        '/settings': (context) => Settings(),
      },
    );
  }
}
