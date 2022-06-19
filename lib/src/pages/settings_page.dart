import 'package:flutter/material.dart';
import 'package:userpreferencesapp/src/widgets/menu_widget.dart';


class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  static final String routeName = 'settings';

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {

  bool _colorSecundario = false;
  int _genero = 1;
  String _nombre = 'Pedro';

  TextEditingController _textController = TextEditingController();

  @override
  void initState() {
  
    super.initState();
    _textController = TextEditingController( text: _nombre);
  }

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
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(5.0),
            child: Text('Settings', style: TextStyle(fontSize: 45.5, fontWeight: FontWeight.bold),),
          ),
          const Divider(),
          SwitchListTile(
            value: _colorSecundario, 
            title: Text('Color secundario'),
            onChanged: (value){
              setState(() {
              _colorSecundario = value;
              });
            }
             ),
             RadioListTile(
              value: 1, 
              title: Text('Masculino'),
              groupValue: _genero, 
              onChanged: ( int? value ){
                setState(() {
                _genero = value!;
                  
                });
              },
              ),

              RadioListTile(
              value: 2, 
              title: const Text('Femenino'),
              groupValue: _genero, 
              onChanged: ( int ?value ){
                setState(() {
                _genero = value!;
                  
                });
              },
              ),
              const Divider(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  controller: _textController,
                  decoration: InputDecoration(
                    labelText: 'Nombre',
                    helperText: 'Nombre de la persona usando el telefono',
                  ),
                  onChanged: ( value ){},
                ),
              )
        ],
      )
      
    );
}
}