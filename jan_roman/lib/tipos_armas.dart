import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:jan_roman/Clases_armas.dart';


class TipoArmas extends StatelessWidget{
  const TipoArmas({super.key});
  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        Clases_armas(valorText:"ASSAULT RIFLES"),
        Clases_armas(valorText:"SUBMACHINE RIFLES"),
        Clases_armas(valorText:"SNIPER RIFLES"),
        Clases_armas(valorText:"HANDGUNS"),
      ],
    );

}
}


