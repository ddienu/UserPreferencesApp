import 'package:flutter/material.dart';

import 'package:userpreferencesapp/src/widgets/menu_widget.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static final String routeName = 'home';

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
        children: const [
          Text('Color secundario:'),
          Divider(),
          Text('Género'),
          Divider(),
          Text('Nombre de usario:'),
          Divider()
        ],
      ),
    );
}

}