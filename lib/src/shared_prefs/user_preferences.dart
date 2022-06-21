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
  
//Get and set of genero
  int get genero {
    return _prefs.getInt('genero') ?? 1;
  }

  set genero( int value) {
    _prefs.setInt('genero', value);
  }
  //Get and set of colorSecundario
  bool get colorSecundario{
    return _prefs.getBool('colorSecundario') ?? false;
  }

  set colorSecundario( bool value) {
    _prefs.setBool('colorSecundario', value);
  }
  //Get and set of nombre de usuario
   String get nombreUsuario{
    return _prefs.getString('nombreUsuario') ?? '';
  }

  set nombreUsuario( String value) {
    _prefs.setString('nombreUsuario', value);
  }

  //Get and set of última página.
  String get ultimaPagina{
    return _prefs.getString('ultimaPagina') ?? 'home';
  }

  set ultimaPagina( String value) {
    _prefs.setString('ultimaPagina', value);
  }
 }
