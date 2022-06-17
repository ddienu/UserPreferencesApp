import 'package:flutter/material.dart';
import 'package:userpreferencesapp/src/pages/settings_page.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static final String routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Preferencias de usuario'),
      ),
      drawer: _crearMenu(context),
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

  Drawer _crearMenu(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Container(),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/menu-img.jpg'),
                fit: BoxFit.cover,
                )
            ),
            ),
            ListTile(
              leading: Icon(Icons.home_filled, color: Colors.blue,),
              title: Text('Home'),
              onTap: () => Navigator.pushReplacementNamed(context, HomePage.routeName)
            ),

            ListTile(
              leading: Icon(Icons.party_mode, color: Colors.blue,),
              title: Text('Party mode'),
              onTap: (){},
            ),

            ListTile(
              leading: Icon(Icons.people_alt_outlined, color: Colors.blue,),
              title: Text('People'),
              onTap: (){},
            ),

            ListTile(
              leading: Icon(Icons.settings, color: Colors.blue,),
              title: Text('Settings'),
              onTap: () => Navigator.pushReplacementNamed(context, SettingsPage.routeName)
            ),
        ],
      ),
      );  
  }
}