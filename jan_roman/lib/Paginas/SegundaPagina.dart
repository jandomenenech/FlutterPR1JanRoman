import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:jan_roman/BD_armas/Armas.dart';
import 'package:jan_roman/Objetos/Ventana_Add_Arma.dart';
import 'package:jan_roman/Objetos/lista_armas.dart';

class SegundaPagina extends StatefulWidget {
  final String tipo;

  const SegundaPagina({Key? key, required this.tipo}) : super(key: key);

  @override
  State<SegundaPagina> createState() => _SegundaPaginaState();
}

class _SegundaPaginaState extends State<SegundaPagina> {
  final _boxArmas = Hive.box("box_armas");
  TextEditingController controlador = TextEditingController();
  Armas a = Armas();
  String arma = "";

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
      arma = a.listaTipo[index];
      a.listaTipo.removeAt(index);
      for(int i = 0; i < a.listaArmas.length; i++){
        if (a.listaArmas[i][1] == arma){
          a.listaArmas.removeAt(i);

      }
    }
    a.guardarDades();
  });
  }

  void retornarArmas(){
    if(a.listaTipo.isEmpty){
         for(int index = 0; index < a.listaArmas.length; index++){
        if(a.listaArmas[index][0] == widget.tipo){
            a.listaTipo.add(a.listaArmas[index][1]);
        }
    }
    }else{

    }
  }

  void Guardar(){
    setState(() {
      a.listaTipo.add(controlador.text);
      a.listaArmas.add([widget.tipo, controlador.text]);
    });
    a.guardarDades();
    Navigator.of(context).pop();
    controlador.clear();
  }


  void addArma(){
    showDialog(
      context: context,
      builder: (context){
        return ArmaNueva(controladorTF: controlador,
        accioGuardar: Guardar,
        accioTancar: ()=> Navigator.of(context).pop(),
        );
      },
      );
      a.guardarDades();
  }



 @override
Widget build(BuildContext context) {
  retornarArmas();
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
                itemCount: a.listaTipo.length,
                itemBuilder: (context, index) {
                  return ListaArmas(
                    tipo_arma: widget.tipo,
                    nombre_arma: a.listaTipo[index],
                    borrarArma: (contexto) => eliminarArma(index),
                  );
                },
              ),
            ),
            Row(
              children: <Widget>[
                IconButton(
                  iconSize: 45.5,
                  color: Color.fromARGB(255, 0, 0, 0),
                  icon: const Icon(Icons.add),
                  onPressed: () => addArma(),
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

