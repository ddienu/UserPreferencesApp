import 'package:flutter/material.dart';

import 'package:userpreferencesapp/src/pages/home_page.dart';
import 'package:userpreferencesapp/src/pages/settings_page.dart';
import 'package:userpreferencesapp/src/shared_prefs/user_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = UserPreferences();
  await prefs.initPrefs();

runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);

    final prefs = UserPreferences();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Preferences',
      initialRoute: prefs.ultimaPagina,
      routes: {
        HomePage.routeName     : (BuildContext context) => HomePage(),
        SettingsPage.routeName : (BuildContext context) => const SettingsPage(),
        },
      );
  }
}