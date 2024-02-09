import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:jan_roman/Paginas/PrimeraPagina.dart';


void main() async {
  await Hive.initFlutter();
  var box = await Hive.openBox("box_armas");

  runApp(const ArmeriasJR());
}

class ArmeriasJR extends StatelessWidget {
  const ArmeriasJR({super.key});

  @override
  Widget build(BuildContext context) {
        return MaterialApp(
          home: TipoArmas(),
        );
  }
  }

