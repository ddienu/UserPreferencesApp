import 'package:flutter/material.dart';

import 'package:userpreferencesapp/src/pages/home_page.dart';
import 'package:userpreferencesapp/src/pages/settings_page.dart';
import 'package:userpreferencesapp/src/shared_prefs/user_preferences.dart';

void main() async {

  final prefs = UserPreferences();
  await prefs.initPrefs();

runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Preferences',
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName     : (BuildContext context) => HomePage(),
        SettingsPage.routeName : (BuildContext context) => const SettingsPage(),
        },
      );
  }
}