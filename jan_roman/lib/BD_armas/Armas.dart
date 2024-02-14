import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:hive_flutter/hive_flutter.dart';

class Armas {
  List listaArmas = [];
  List listaTipo = [];

  final _boxArmas = Hive.box("box_armas");

  void carregarDades() {
    listaArmas = _boxArmas.get("box_armas");
    }
  


  void guardarDades() {
    _boxArmas.put("box_armas", listaArmas);
  }

  void crearDadesInicials() {
    listaArmas = [
      ["Assault Rifle", "M4A14"],
      ["Submachinegun", "F2000"],
      ["Handgun", "Glock 19"],
      ["Handgun", "Dessert Eagle"],
      ["Submachinegun", "FAL"],
      ["Sniper Rifle", "Barret M82"],
      ["Sniper Rifle", "Mk13"],
      ["Assault Rifle", "IA2"],
      ["Assault Rifle", "Galil"],
      ["Handgun", "Kolibri 2mm"],
      ["Submachinegun", "FNAB-43"],
      ["Sniper Rifle", "M24"]
    ];
  }
}
