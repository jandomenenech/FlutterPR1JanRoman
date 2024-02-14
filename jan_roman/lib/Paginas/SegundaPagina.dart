import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:jan_roman/BD_armas/Armas.dart';
import 'package:jan_roman/Objetos/lista_armas.dart';

class SegundaPagina extends StatefulWidget {
  final String tipo;

  const SegundaPagina({Key? key, required this.tipo}) : super(key: key);

  @override
  State<SegundaPagina> createState() => _SegundaPaginaState();
}

class _SegundaPaginaState extends State<SegundaPagina> {
  final _boxArmas = Hive.box("box_armas");
  Armas a = Armas();

  @override
  void initState() {
    super.initState();
    if (_boxArmas.isEmpty) {
      a.crearDadesInicials();
    } else {
      a.carregarDades();
    }
  }

  void eliminarArma(int index) {
    setState(() {
      a.listaArmas.removeAt(index);
    });
    a.guardarDades();
  }

  void retornarArmas(int index){
    if(a.listaArmas[index][0] == widget.tipo){ 
      a.listaTipo.add(a.listaArmas[index][1]);
    }
    
  }

 @override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Color.fromARGB(255, 59, 98, 63),
    appBar: AppBar(
      backgroundColor: Color.fromARGB(255, 64, 64, 64),
      title: Text(
        widget.tipo,
        style: const TextStyle(
          color: Color.fromARGB(255, 255, 255, 255)
        ),
      ),
    ),
    body: Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 130, 116, 76),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: a.listaArmas.length,
                itemBuilder: (context, index) {
                   retornarArmas(index);
                },
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: a.listaArmas.length,
                itemBuilder: (context, index) {
                  return ListaArmas(
                    tipo_arma: widget.tipo,
                     nombre_arma: a.listaArmas[index][0],
                      borrarArma: (contexto) => eliminarArma(index),
                      );
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

