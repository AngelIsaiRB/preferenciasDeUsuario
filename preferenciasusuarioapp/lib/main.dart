import 'package:flutter/material.dart';
import 'package:preferenciasusuarioapp/src/pages/home_page.dart';
import 'package:preferenciasusuarioapp/src/pages/settings_page.dart';
import 'package:preferenciasusuarioapp/src/share_preferences/preferencias_user.dart';
 
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs =  PreferenciasUsuario();
  await prefs.initprefs();
  runApp(MyApp());
  }
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final prefs =  PreferenciasUsuario();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Preferencias',
      initialRoute: prefs.ultimaPagina,
      routes: {
          HomePage.routeName : (BuildContext context)=> HomePage(),
          SettingsPage.routeName : (BuildContext context)=> SettingsPage(),
      },
    );
  }
}