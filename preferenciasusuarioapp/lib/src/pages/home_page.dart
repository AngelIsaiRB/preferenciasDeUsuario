import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  static final String routeName="home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("prefrerencias"),
      ),
      body: Column(
        children: [
          Text("color secundario"),
          Divider(),
          Text("genero"),
          Divider(),
          Text("nombre usuario"),
          Divider(),
        ],
      ),
    );
  }
}