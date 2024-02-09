import 'package:hive/hive.dart';
class Armas{
  List listaArmas = [];
  
  final _boxTasques = Hive.box("box_armas");

  void carregarDades(){
    listaArmas = _boxTasques.get("box_armas");
  }

  void guardarDades(){
    _boxTasques.put("box_armas", listaArmas);
  }

  void crearDadesInicials(){
    listaArmas = [
    ["Rifle de Asalto", "M4A14"],
    ["Pistola", "Dessert Eagle"],
    ["Subfusil", "FAL"],
    ["Francotirador", "Barret M82"],
  ];
  }

}