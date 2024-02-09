import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:jan_roman/Objetos/Clases_armas.dart';

class ListaArmas extends StatefulWidget {

  String tipo_arma;

  ListaArmas({
    super.key,
    required this.tipo_arma,
  }) ;

  @override
  _ListaArmasState createState() => _ListaArmasState();
}

class _ListaArmasState extends State<ListaArmas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WEAPONS'),
      ),
    );
  }
}