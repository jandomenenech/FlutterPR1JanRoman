import 'package:hive/hive.dart';

class Armas {
  List listaArmas = [];
  List listaTipo = [];

  final _boxTasques = Hive.box("box_armas");

  List carregarDades(String tipo) {
    listaArmas = _boxTasques.get("box_armas");
    for (int index = 0; index < listaArmas.length; index++) {
      if (listaArmas[index][0] == tipo) {
        listaTipo.add(listaArmas[index]);
      } else {}
    }

    return listaTipo;
  }

  void guardarDades() {
    _boxTasques.put("box_armas", listaArmas);
  }

  void crearDadesInicials() {
    listaArmas = [
      ["Rifle de Asalto", "M4A14"],
      ["Subfusil", "F2000"],
      ["Pistola", "Glock 19"],
      ["Pistola", "Dessert Eagle"],
      ["Subfusil", "FAL"],
      ["Francotirador", "Barret M82"],
      ["Francotirador", "Mk13"],
      ["Rifle de asalto", "IA2"],
      ["Rifle de asalto", "Galil"],
      ["Pistola", "Kolibri 2mm"],
      ["Subfusil", "FNAB-43"],
      ["Francotirador", "M24"]
    ];
  }
}
