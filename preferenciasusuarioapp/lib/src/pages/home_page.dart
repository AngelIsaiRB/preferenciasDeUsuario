import 'package:flutter/material.dart';
import 'package:preferenciasusuarioapp/src/share_preferences/preferencias_user.dart';

import 'package:preferenciasusuarioapp/src/widgets/menu_widget.dart';

class HomePage extends StatelessWidget {

  static final String routeName="home";
    final prefs= new PreferenciasUsuario();

  @override
  Widget build(BuildContext context) {
    prefs.ultimaPagina=HomePage.routeName;

    return Scaffold(
      appBar: AppBar(
        title: Text("prefrerencias"),
        backgroundColor: (prefs.colorSecundario) ? Colors.teal: Colors.blue,
      ),
      drawer: MenuWidget(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("color secundario: ${prefs.colorSecundario}"),
          Divider(),
          Text("genero: ${prefs.genero}"),
          Divider(),
          Text("nombre usuario: ${prefs.nombreUsuario}"),
          Divider(),
        ],
      ),
    );
  }

  
}