import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:jan_roman/Objetos/Clases_armas.dart';

class ListaArmas extends StatelessWidget {

  String tipo_arma;
  String? nombre_arma;
  Function(BuildContext)? borrarArma;

  ListaArmas({
    super.key,
    required this.tipo_arma,
    required this.nombre_arma,
    required this.borrarArma
  }) ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Slidable(
        endActionPane: ActionPane(
          motion: DrawerMotion(),
          children: [
            SlidableAction(
              onPressed: borrarArma,
              icon: Icons.delete,
              backgroundColor: Colors.blue,
              label: "Esborrar",
              borderRadius: BorderRadius.circular(15),
            )
          ],
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.amber[400],
            borderRadius: BorderRadius.circular(15),
          ),
          padding: EdgeInsets.all(15),
          child: Row(
            children: [
              Text(
                nombre_arma!,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
