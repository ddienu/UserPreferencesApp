import 'package:flutter/material.dart';
import 'package:userpreferencesapp/src/widgets/menu_widget.dart';


class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  static final String routeName = 'settings';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.5,
        backgroundColor: Colors.black26,
        title: const Text('Ajustes'),
      ),
      drawer: MenuWidget(),
      body: const Center(
        child: Text('Ajustes Page'),
      )
    );
}
}