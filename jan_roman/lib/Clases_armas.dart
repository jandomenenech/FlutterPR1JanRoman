import 'package:flutter/material.dart';

class Clases_armas extends StatelessWidget {
  String valorText;

  Clases_armas({
    super.key,
    required this.valorText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.10),
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 80, 113, 81),
          borderRadius: BorderRadius.circular(100),
        ),
        padding: EdgeInsets.all(15),
        child: Padding(
          padding: const EdgeInsets.only(left: 50, right: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                valorText,
                style: TextStyle(decoration: TextDecoration.none, color: const Color.fromARGB(255, 0, 29, 1)),
              ),
              Row(
                children: <Widget>[
                  IconButton(
                    iconSize: 45,
                    color: Colors.black,
                    icon: Icon(Icons.list_alt_sharp),
                    onPressed: () {
                    },
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
