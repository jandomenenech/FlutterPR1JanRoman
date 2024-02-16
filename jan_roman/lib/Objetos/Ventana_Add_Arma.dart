import 'package:flutter/material.dart';

class ArmaNueva extends StatelessWidget {

  TextEditingController controladorTF = TextEditingController();
  Function()? accioGuardar;
  Function()? accioTancar;

   ArmaNueva({
    super.key,
    required this.controladorTF,
    required this.accioGuardar,
    required this.accioTancar,
    });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Color.fromARGB(255, 78, 223, 114),
      content: Container(
        height: 120,
        width: 400,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controladorTF,
              decoration: InputDecoration(
                hintText: "Add new Weapon",
                filled: true,
                fillColor: Color.fromARGB(255, 164, 164, 164),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15)
                ),
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children: [
                 MaterialButton(
                    onPressed: accioGuardar,
                    color: Color.fromARGB(255, 78, 113, 75),
                   child: Text("Save"),
                ),
                SizedBox(width: 10,),
                MaterialButton(
                    onPressed: accioTancar,
                    color: Color.fromARGB(255, 78, 113, 75),
                   child: Text("Close"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}