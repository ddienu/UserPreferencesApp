import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences {

  static final UserPreferences _instancia = UserPreferences._internal();

  factory UserPreferences(){
    return _instancia;
  }

  UserPreferences._internal();

  late SharedPreferences _prefs;

  initPrefs() async {
      _prefs = await SharedPreferences.getInstance();
  }
  

  int get genero {
    return _prefs.getInt('genero') ?? 1;
  }

  set genero( int value) {
    _prefs.setInt('genero', value);
  }

}