import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:jan_roman/Objetos/Clases_armas.dart';


class TipoArmas extends StatelessWidget{
  const TipoArmas({super.key});
  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        Clases_armas(valorText:"ASSAULT RIFLES", tipo_arma: "Assault Rifle",),
        Clases_armas(valorText:"SUBMACHINE RIFLES", tipo_arma: "Submachinegun",),
        Clases_armas(valorText:"SNIPER RIFLES", tipo_arma: "Sniper Rifle",),
        Clases_armas(valorText:"HANDGUNS", tipo_arma: "Handgun",),
        //Clases_armas(valorText: "LIGHT MACHINE GUN"),
        //Clases_armas(valorText: "HEAVY WEAPONS"),
      ],
    );

}
}


