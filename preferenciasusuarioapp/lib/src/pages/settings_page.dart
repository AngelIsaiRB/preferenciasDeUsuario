import 'package:flutter/material.dart';
import 'package:preferenciasusuarioapp/src/share_preferences/preferencias_user.dart';
import 'package:preferenciasusuarioapp/src/widgets/menu_widget.dart';


class SettingsPage extends StatefulWidget {

  static final String routeName="settings";

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _colorSecundario;
  int _genero ;
  String _nombre="pedro";
  TextEditingController _texconmtroller;
  final prefs =new PreferenciasUsuario();

  @override
  void initState()  {
    super.initState();
    prefs.ultimaPagina=SettingsPage.routeName;
    _genero= prefs.genero;
    _colorSecundario = prefs.colorSecundario;
    _nombre=prefs.nombreUsuario;
    _texconmtroller= new TextEditingController(text:_nombre);
    
  }

  
  _setSelecterRadio(int valor) {
    prefs.genero=valor;
    _genero=valor;    
    setState(() {
      
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ajustes"),
        backgroundColor: (prefs.colorSecundario) ? Colors.teal: Colors.blue,
      ),
      drawer: MenuWidget(),
      body: ListView(
        children: [
          Container(
            child: Text("SEttings", style: TextStyle(fontSize: 50.0),),
            padding: EdgeInsets.all(5.0),
          ),
          Divider(),
          SwitchListTile(
            value: _colorSecundario,
            title: Text("Color secundario"),
            onChanged: (value){
              setState(() {
              _colorSecundario=value;
               prefs.colorSecundario=value;
                
              });
            },
          ),
          RadioListTile(
            value: 1,
            title: Text("masculino"),
            groupValue: _genero,
            onChanged: _setSelecterRadio,
          ),
          RadioListTile(
            value: 2,
            title: Text("femenino"),
            groupValue: _genero,
            onChanged: _setSelecterRadio,
          ),
          Divider(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              controller: _texconmtroller,
              decoration: InputDecoration(
                labelText: "nombre",
                helperText: "nombre de la persona"
              ),
              onChanged: (value){
                prefs.nombreUsuario=value;
              },
            ),
          )
        ],
      )
    );
  }
}