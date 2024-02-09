import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:jan_roman/Objetos/Clases_armas.dart';
import 'package:jan_roman/Objetos/lista_armas.dart';
import 'package:jan_roman/Paginas/PrimeraPagina.dart';
import 'package:jan_roman/Paginas/SegundaPagina.dart';

class Clases_armas extends StatelessWidget {
  String valorText;
  String tipo_arma;

  Clases_armas({
    super.key,
    required this.valorText,
    required this.tipo_arma,
  });

  @override
  Widget build(BuildContext context) {
      return Padding(
          padding: const EdgeInsets.all(20.10),
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 80, 113, 81),
              borderRadius: BorderRadius.circular(100),
            ),
            padding: const EdgeInsets.all(15),
            child: Padding(
              padding: const EdgeInsets.only(left: 50, right: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    valorText,
                    style: const TextStyle(decoration: TextDecoration.none, color: Color.fromARGB(255, 0, 29, 1)),
                  ),
                  Row(
                    children: <Widget>[
                      IconButton(
                        iconSize: 45.5,
                        color: Colors.black,
                        icon: const Icon(Icons.list_alt_sharp),
                        onPressed: () {
                          Navigator.push(context,
                          MaterialPageRoute(builder: (context)=> SegundaPagina(tipo_arma: tipo_arma,)));
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
  }
}