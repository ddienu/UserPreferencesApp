import 'package:flutter/material.dart';
import 'package:userpreferencesapp/src/shared_prefs/user_preferences.dart';

import 'package:userpreferencesapp/src/widgets/menu_widget.dart';


class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  static final String routeName = 'home';

  final prefs = UserPreferences();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black26,
        elevation: 0.5,
        centerTitle: true,
        title: const Text('Preferencias de usuario'),
      ),
      drawer: MenuWidget(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Color secundario:'),
          Divider(),
          Text('Género ${prefs.genero}'),
          Divider(),
          Text('Nombre de usario:'),
          Divider()
        ],
      ),
    );
}

}