import 'package:flutter/material.dart';

class SegundaPagina extends StatelessWidget {
    String tipo_arma;
    SegundaPagina({
    super.key,
    required this.tipo_arma,
    });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(tipo_arma),
      backgroundColor: Color.fromARGB(255, 201, 255, 203),
    );
  }
}