import 'package:flutter/material.dart';
import 'package:userpreferencesapp/src/pages/home_page.dart';
import 'package:userpreferencesapp/src/pages/settings_page.dart';


class MenuWidget extends StatelessWidget {
  const MenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black26,
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
              title: Text('Home', style: TextStyle(color: Colors.white),),
              onTap: () => Navigator.pushReplacementNamed(context, HomePage.routeName)
            ),

            ListTile(
              leading: Icon(Icons.party_mode, color: Colors.blue,),
              title: Text('Party mode', style: TextStyle(color: Colors.white)),
              onTap: (){},
            ),

            ListTile(
              leading: Icon(Icons.people_alt_outlined, color: Colors.blue,),
              title: Text('People', style: TextStyle(color: Colors.white)),
              onTap: (){},
            ),

            ListTile(
              leading: Icon(Icons.settings, color: Colors.blue,),
              title: Text('Settings', style: TextStyle(color: Colors.white)),
              onTap: () => Navigator.pushReplacementNamed(context, SettingsPage.routeName)
            ),
        ],
      ),
      );  
  }
}