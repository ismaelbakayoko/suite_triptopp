import 'package:flutter/material.dart';

class Bouton extends StatelessWidget {
  final String hintText;
  final direction;

  const Bouton({super.key, required this.hintText, required this.direction});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => direction,
          ),
        )
      },
      child: Container(
        margin: const EdgeInsets.only(top: 30, bottom: 30),
        alignment: Alignment.center,
        height: 50,
        width: 360,
        decoration: BoxDecoration(
            color: Colors.indigoAccent,
            borderRadius: BorderRadius.circular(30)),
        child: Text(
          hintText,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
